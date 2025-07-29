import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../../sessions/user_session.dart';
import '../../models/past_period.dart';
import '../../models/period_prediction.dart';

class FirebaseSyncService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> syncUserPeriodData() async {
    final uid = UserSession().id;
    try {
      final pastPeriodsBox = Hive.box<PastPeriod>('pastPeriods');
      final metadataBox = Hive.box('periodMetaData');
      final predictionsBox = Hive.box<PeriodPrediction>('predictions');

      final pastPeriodsMap = {
        for (var key in pastPeriodsBox.keys)
          key.toString(): pastPeriodsBox.get(key)?.toJson()
      };

      final metadataMap = {
        for (var key in metadataBox.keys)
          key.toString(): metadataBox.get(key)
      };

      final predictionsMap = {
        for (var key in predictionsBox.keys)
          key.toString(): predictionsBox.get(key)?.toJson()
      };

      await _firestore.collection('pastPeriods').doc(uid).set(pastPeriodsMap);
      await _firestore.collection('periodMetaData').doc(uid).set(metadataMap);
      await _firestore.collection('predictions').doc(uid).set(predictionsMap);
    } catch (e) {
      if (kDebugMode) {
        print("Firestore sync error: $e");
      }
    }
  }

  Future<void> deleteAccountData() async {
    final uid = UserSession().id;

    print(FirebaseAuth.instance.currentUser?.uid);

    try {
      await _firestore.collection('period_logs').doc(uid).delete();
      await _firestore.collection('periodMetaData').doc(uid).delete();
      await _firestore.collection('predictions').doc(uid).delete();

      if (kDebugMode) {
        print("User data deleted successfully.");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error deleting user data: $e");
      }
    }
  }

  Future<void> deleteFirebaseUser() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        await user.delete();
        if (kDebugMode) {
          print("Firebase user deleted.");
        }
      } catch (e) {
        if (kDebugMode) {
          print("Error deleting Firebase user: $e");
        }
      }
    }
  }
}
