// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'OVLO tracker';

  @override
  String get appSloganGeneral => 'Your personal wellness companion';

  @override
  String get appSloganSignUp => 'Start your wellness journey today';

  @override
  String get appSloganSignIn => 'Sign In to continue your wellness journey';

  @override
  String get appSloganAi => 'Your smart assistant is ready';

  @override
  String get settings => 'Paramètres';

  @override
  String get user => 'Utilisateur';

  @override
  String get login => 'Se connecter';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get save => 'Enregistrer';

  @override
  String get edit => 'Modifier';

  @override
  String get delete => 'Supprimer';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get ok => 'OK';

  @override
  String get error => 'Erreur';

  @override
  String get success => 'Succès';

  @override
  String get loading => 'Chargement...';

  @override
  String get editPeriod => 'Edit Period';

  @override
  String get seeAll => 'See All';

  @override
  String get sendResetLink => 'Send Reset Link';

  @override
  String get resendEmail => 'Resend Email';

  @override
  String xCharacters(int chars) {
    return '$chars characters';
  }

  @override
  String nextPeriodInXDays(
    int days,
    Object nextPeriodTomorrow,
    Object periodIsOngoing,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Next period in $days days',
      one: '$nextPeriodTomorrow',
      zero: '$periodIsOngoing',
    );
    return 'Next period in $_temp0';
  }

  @override
  String get nextPeriodTomorrow => 'Next period tomorrow';

  @override
  String get periodIsOngoing => 'Period is ongoing';

  @override
  String get hiGoodMorning => 'Hi, Good Morning';

  @override
  String get hiGoodEvening => 'Hi, Good Evening';

  @override
  String hiUser(String name) {
    return '$name 👋';
  }

  @override
  String get customizeExperience =>
      'Personnalisez votre expérience OVLO tracker';

  @override
  String get appearance => 'Apparence';

  @override
  String get support => 'Support';

  @override
  String get account => 'Compte';

  @override
  String get notifications => 'Notifications';

  @override
  String get privacyAndSecurity => 'Confidentialité et Sécurité';

  @override
  String get helpCenter => 'Help Center';

  @override
  String get helpCenterSubtitle => 'FAQs and support articles';

  @override
  String get searchForHelp => 'Search for help...';

  @override
  String get frequentlyAskedQuestions => 'Frequently Asked Questions';

  @override
  String get liveChat => 'Live Chat';

  @override
  String get emailUs => 'Email Us';

  @override
  String get call => 'Call';

  @override
  String get stillNeedHelp => 'Still Need Help';

  @override
  String get supportEmail => 'Email: support@Ovlotracker.com';

  @override
  String get supportPhone => 'Phone: +1 (555) 123-HELP';

  @override
  String get supportHours => 'Hours: Mon-Fri 9AM-6PM EST';

  @override
  String get theme => 'Thème';

  @override
  String get themeSubtitle => 'Light or dark mode';

  @override
  String get lightTheme => 'Clair';

  @override
  String get darkTheme => 'Sombre';

  @override
  String get systemTheme => 'Système';

  @override
  String get dataPrivacy => 'Data Privacy';

  @override
  String get deleteAccountData => 'Delete Account Data';

  @override
  String get deleteAllOfYourAccountData => 'Delete all of your account data';

  @override
  String get deleteDataDialogTitle => 'Delete Data';

  @override
  String get deleteDataInfo =>
      'This action will delete all data associated with your account. This action cannot be undone';

  @override
  String get dataDeletedSuccess => 'Successfully deleted your data';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountPermanently => 'Delete your account permanently';

  @override
  String get deleteAccountDialogTitle => 'Delete Account';

  @override
  String get deleteAccountInfo =>
      'This action will delete your account and all data associated with it. This action cannot be undone';

  @override
  String get accountDeletedSuccess =>
      'Successfully deleted your account and data';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get builtWith => 'Built with ♥️';

  @override
  String get periodTracking => 'Suivi des Règles';

  @override
  String get cycle => 'Cycle';

  @override
  String get periodCycle => 'Period Cycle';

  @override
  String get cycleLength => 'Durée du Cycle';

  @override
  String get periodLength => 'Durée des Règles';

  @override
  String get nextPeriod => 'Prochaines Règles';

  @override
  String get ovulation => 'Ovulation';

  @override
  String get fertile => 'Fertile';

  @override
  String get pms => 'SPM';

  @override
  String get period => 'Règles';

  @override
  String get predicted => 'Predicted';

  @override
  String get flow => 'Flux';

  @override
  String get menstrualFlow => 'Menstrual Flow';

  @override
  String get symptoms => 'Symptômes';

  @override
  String get mood => 'Humeur';

  @override
  String get notes => 'Notes';

  @override
  String get saveDay => 'Save Day';

  @override
  String get average => 'average';

  @override
  String inXDays(int days, Object nextPeriodTomorrow, Object periodIsOngoing) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Next period in $days days',
      one: '$nextPeriodTomorrow',
      zero: '$periodIsOngoing',
    );
    return 'in $_temp0';
  }

  @override
  String get journal => 'Journal';

  @override
  String get addEntry => 'Ajouter une Entrée';

  @override
  String get recentEntries => 'Entrées Récentes';

  @override
  String get enterYourThoughts => 'Entrez vos pensées...';

  @override
  String get howAreYouFeeling => 'Comment vous sentez-vous ?';

  @override
  String get howDoYouFeelToday => 'How do you feel today?';

  @override
  String get feelingHint =>
      'Write how you\'re feeling today... Share your thoughts, symptoms, mood, or anything on your mind. This is is your safe space. 🌸';

  @override
  String get noEntriesFound => 'No entries found';

  @override
  String get selectMood => 'Sélectionner l\'Humeur';

  @override
  String get selectSymptoms => 'Sélectionner les Symptômes';

  @override
  String get selectFlow => 'Sélectionner le Flux';

  @override
  String get signIn => 'Se connecter';

  @override
  String get signUp => 'S\'inscrire';

  @override
  String get email => 'Email';

  @override
  String get enterYourEmail => 'Enter Your Email';

  @override
  String get enterYourPassword => 'Enter Your Password';

  @override
  String get confirmYourPassword => 'Confirm Your Password';

  @override
  String get password => 'Mot de passe';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get rememberMe => 'Remember Me';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get alreadyHaveAccount => 'Vous avez déjà un compte ?';

  @override
  String get dontHaveAccount => 'Vous n\'avez pas de compte ?';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get emailVerification => 'Vérification Email';

  @override
  String get verifyEmail => 'Vérifier l\'Email';

  @override
  String get resendVerification => 'Renvoyer la Vérification';

  @override
  String get iAgreeToThe => 'I Agree to the';

  @override
  String get termsOfService => 'Terms Of Service';

  @override
  String get and => 'and';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get welcomeBack => 'Welcome Back';

  @override
  String get orContinueWith => 'Or Continue With';

  @override
  String get successfullySignedUp => 'Successfully Signed-up';

  @override
  String get googleSignInCancelled => 'Google sign-in was cancelled.';

  @override
  String get agreeToTermsAndConditions =>
      'You must agree to the terms and privacy policy.';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match.';

  @override
  String get successfullySignedIn => 'Successfully Signed-in';

  @override
  String get signUpFailed => 'Sign up failed.';

  @override
  String get signInFailed => 'Sign in failed.';

  @override
  String get sendPasswordResetLink =>
      'Enter your email and we\'ll send you a password reset link.';

  @override
  String get verificationEmailSent =>
      'A verification email has been sent to your email address.';

  @override
  String get verificationEmailResent => 'Verification email resent';

  @override
  String get pleaseCheckYourInbox => 'Please check your inbox.';

  @override
  String get pleaseCheckYourSpam => '(Occasionally check your spam folder)';

  @override
  String resendEmailInX(String time) {
    return 'You can send another email in $time';
  }

  @override
  String get aiChat => 'Chat IA';

  @override
  String get aiGreeting => 'Hi there! I\'m Ovlo AI - ask me anything, period.';

  @override
  String get aiAssist => 'Hi! How can i assist you today?';

  @override
  String get popularTopics => 'Popular Topics';

  @override
  String get askQuestion => 'Posez une question...';

  @override
  String get typeAMessage => 'Type a message...';

  @override
  String get recentChats => 'Chats Récents';

  @override
  String get quickQuestions => 'Questions Rapides';

  @override
  String get chatWithAI => 'Chatter avec l\'IA';

  @override
  String get calendar => 'Calendrier';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get month => 'Mois';

  @override
  String get year => 'Year';

  @override
  String get week => 'Semaine';

  @override
  String get day => 'Jour';

  @override
  String get categories => 'Catégories';

  @override
  String get home => 'Accueil';

  @override
  String get insights => 'Insights';

  @override
  String get profile => 'Profil';

  @override
  String get profileSettings => 'Paramètres du Profil';

  @override
  String get name => 'Nom';

  @override
  String get dateOfBirth => 'Date de Naissance';

  @override
  String get avatar => 'Avatar';

  @override
  String get personalInfo => 'Informations Personnelles';

  @override
  String get help => 'Aide';

  @override
  String get faqs => 'FAQ';

  @override
  String get contactSupport => 'Contacter le Support';

  @override
  String get reportIssue => 'Signaler un Problème';

  @override
  String get monday => 'Lundi';

  @override
  String get tuesday => 'Mardi';

  @override
  String get wednesday => 'Mercredi';

  @override
  String get thursday => 'Jeudi';

  @override
  String get friday => 'Vendredi';

  @override
  String get saturday => 'Samedi';

  @override
  String get sunday => 'Dimanche';

  @override
  String get january => 'Janvier';

  @override
  String get february => 'Février';

  @override
  String get march => 'Mars';

  @override
  String get april => 'Avril';

  @override
  String get may => 'Mai';

  @override
  String get june => 'Juin';

  @override
  String get july => 'Juillet';

  @override
  String get august => 'Août';

  @override
  String get september => 'Septembre';

  @override
  String get october => 'Octobre';

  @override
  String get november => 'Novembre';

  @override
  String get december => 'Décembre';

  @override
  String get light => 'Léger';

  @override
  String get medium => 'Moyen';

  @override
  String get heavy => 'Abondant';

  @override
  String get spotting => 'Spotting';

  @override
  String get happy => 'Happy';

  @override
  String get calm => 'Calm';

  @override
  String get anxious => 'Anxious';

  @override
  String get tired => 'Tired';

  @override
  String get sad => 'Sad';

  @override
  String get angry => 'Angry';

  @override
  String get bleeding => 'Bleeding';

  @override
  String get cramps => 'Cramps';

  @override
  String get headache => 'Headache';

  @override
  String get fatigue => 'Fatigue';

  @override
  String get bloating => 'Bloating';

  @override
  String get backPain => 'Back Pain';

  @override
  String get menstrualHealth => 'Menstrual Health';

  @override
  String get periodInsights => 'Period Insights';

  @override
  String get pmsSymptoms => 'PMS Symptoms';

  @override
  String get ovulationSigns => 'Ovulation Signs';
}
