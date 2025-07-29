// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'OvloTracker';

  @override
  String get appSloganGeneral => 'Your personal wellness companion';

  @override
  String get appSloganSignUp => 'Start your wellness journey today';

  @override
  String get appSloganSignIn => 'Sign In to continue your wellness journey';

  @override
  String get appSloganAi => 'Your smart assistant is ready';

  @override
  String get settings => 'Settings';

  @override
  String get user => 'User';

  @override
  String get login => 'Login';

  @override
  String get logout => 'Logout';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get save => 'Save';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Delete';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get ok => 'OK';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

  @override
  String get loading => 'Loading...';

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
  String get customizeExperience => 'Customize your OvloTracker experience';

  @override
  String get appearance => 'Appearance';

  @override
  String get support => 'Support';

  @override
  String get account => 'Account';

  @override
  String get notifications => 'Notifications';

  @override
  String get privacyAndSecurity => 'Privacy And Security';

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
  String get theme => 'Theme';

  @override
  String get themeSubtitle => 'Light or dark mode';

  @override
  String get lightTheme => 'Light';

  @override
  String get darkTheme => 'Dark';

  @override
  String get systemTheme => 'System';

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
  String get periodTracking => 'Period Tracking';

  @override
  String get cycle => 'Cycle';

  @override
  String get periodCycle => 'Period Cycle';

  @override
  String get cycleLength => 'Cycle Length';

  @override
  String get periodLength => 'Period Length';

  @override
  String get nextPeriod => 'Next Period';

  @override
  String get ovulation => 'Ovulation';

  @override
  String get fertile => 'Fertile';

  @override
  String get pms => 'PMS';

  @override
  String get period => 'Period';

  @override
  String get predicted => 'Predicted';

  @override
  String get flow => 'Flow';

  @override
  String get menstrualFlow => 'Menstrual Flow';

  @override
  String get symptoms => 'Symptoms';

  @override
  String get mood => 'Mood';

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
  String get addEntry => 'Add Entry';

  @override
  String get recentEntries => 'Recent Entries';

  @override
  String get enterYourThoughts => 'Enter your thoughts...';

  @override
  String get howAreYouFeeling => 'How are you feeling?';

  @override
  String get howDoYouFeelToday => 'How do you feel today?';

  @override
  String get feelingHint =>
      'Write how you\'re feeling today... Share your thoughts, symptoms, mood, or anything on your mind. This is is your safe space. 🌸';

  @override
  String get noEntriesFound => 'No entries found';

  @override
  String get selectMood => 'Select Mood';

  @override
  String get selectSymptoms => 'Select Symptoms';

  @override
  String get selectFlow => 'Select Flow';

  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Sign Up';

  @override
  String get email => 'Email';

  @override
  String get enterYourEmail => 'Enter Your Email';

  @override
  String get enterYourPassword => 'Enter Your Password';

  @override
  String get confirmYourPassword => 'Confirm Your Password';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get rememberMe => 'Remember Me';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get createAccount => 'Create Account';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get signOut => 'Sign Out';

  @override
  String get emailVerification => 'Email Verification';

  @override
  String get verifyEmail => 'Verify Email';

  @override
  String get resendVerification => 'Resend Verification';

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
  String get aiChat => 'AI Chat';

  @override
  String get aiGreeting => 'Hi there! I\'m Ovlo AI - ask me anything, period.';

  @override
  String get aiAssist => 'Hi! How can i assist you today?';

  @override
  String get popularTopics => 'Popular Topics';

  @override
  String get askQuestion => 'Ask a question...';

  @override
  String get typeAMessage => 'Type a message...';

  @override
  String get recentChats => 'Recent Chats';

  @override
  String get quickQuestions => 'Quick Questions';

  @override
  String get chatWithAI => 'Chat with AI';

  @override
  String get calendar => 'Calendar';

  @override
  String get today => 'Today';

  @override
  String get month => 'Month';

  @override
  String get year => 'Year';

  @override
  String get week => 'Week';

  @override
  String get day => 'Day';

  @override
  String get categories => 'Categories';

  @override
  String get home => 'Home';

  @override
  String get insights => 'Insights';

  @override
  String get profile => 'Profile';

  @override
  String get profileSettings => 'Profile Settings';

  @override
  String get name => 'Name';

  @override
  String get dateOfBirth => 'Date of Birth';

  @override
  String get avatar => 'Avatar';

  @override
  String get personalInfo => 'Personal Information';

  @override
  String get help => 'Help';

  @override
  String get faqs => 'FAQs';

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get reportIssue => 'Report Issue';

  @override
  String get monday => 'Monday';

  @override
  String get tuesday => 'Tuesday';

  @override
  String get wednesday => 'Wednesday';

  @override
  String get thursday => 'Thursday';

  @override
  String get friday => 'Friday';

  @override
  String get saturday => 'Saturday';

  @override
  String get sunday => 'Sunday';

  @override
  String get january => 'January';

  @override
  String get february => 'February';

  @override
  String get march => 'March';

  @override
  String get april => 'April';

  @override
  String get may => 'May';

  @override
  String get june => 'June';

  @override
  String get july => 'July';

  @override
  String get august => 'August';

  @override
  String get september => 'September';

  @override
  String get october => 'October';

  @override
  String get november => 'November';

  @override
  String get december => 'December';

  @override
  String get light => 'Light';

  @override
  String get medium => 'Medium';

  @override
  String get heavy => 'Heavy';

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
