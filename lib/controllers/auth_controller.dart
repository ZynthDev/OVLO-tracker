import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../services/supabase/supabase_user_service.dart';
import '../sessions/user_session.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> registerUserWithEmail(String email, String password) async {
    final res = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return res.user;
  }

  Future<User?> signInWithEmail(String email, String password) async {
    final res = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    final user = res.user;

    if (user != null) {
      createAndUpdateUser(user);
    }

    return user;
  }

  Future<User?> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return null;

    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final res = await _auth.signInWithCredential(credential);
    final user = res.user;

    if (user != null) {
      createAndUpdateUser(user);
    }

    return user;
  }

  Future<User?> signInWithApple() async {
    try {
      final rawNonce = _generateNonce();
      final nonce = _sha256ofString(rawNonce);
      final appleUser = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      final oAuthCredential = OAuthProvider('apple.com').credential(
          idToken: appleUser.identityToken,
          accessToken: appleUser.authorizationCode,
          rawNonce: rawNonce
      );

      final authUser = await _auth.signInWithCredential(oAuthCredential);
      final user = authUser.user;
      print("Apple Credential: $appleUser || Email: ${appleUser.email} || authorizationCode: ${appleUser.authorizationCode}");

      if (user != null) {
        createAndUpdateUser(user);
      }

      return user;
    } catch (e) {
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  Future<void> createAndUpdateUser(User user) async {
    final uid = user.uid;
    await UserSession().registerFirebaseUid(uid);

    final supabaseUserService = SupabaseUserService();
    final existingProfile = await supabaseUserService.getUserProfile(uid);

    if (existingProfile == null) {
      await supabaseUserService.createUserProfile({
        'id': uid,
        'name': user.displayName ?? '',
        'email': user.email ?? '',
        'profile_pic_url': user.photoURL ?? '',
        'created_at': DateTime.now().toIso8601String(),
      });
    }

    await UserSession().setMultipleUserDetails({
      'id': uid,
      'name': user.displayName ?? _generateUserName(email: user.email),
      'email': user.email ?? '',
      'profileImageUrl': user.photoURL ?? '',
      'isAnonymous': user.isAnonymous,
      'providerId': user.providerData.first.providerId,
      'dateOfBirth': '',
    });

    await UserSession().init();
  }

  String _generateUserName({required String? email}) {
    final emailPrefix = email?.split('@').first ?? '';
    final cleaned = emailPrefix.replaceAll(RegExp(r'[^a-zA-Z]'), '');

    return cleaned.isNotEmpty ? cleaned : 'User';
  }

  String _generateNonce([int length = 32]) {
    final charset = dotenv.env['CHARSET_NONCE']!;
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}

