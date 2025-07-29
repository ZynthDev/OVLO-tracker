// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

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
  String get settings => 'Configuración';

  @override
  String get user => 'Usuario';

  @override
  String get login => 'Iniciar Sesión';

  @override
  String get logout => 'Cerrar Sesión';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get save => 'Guardar';

  @override
  String get edit => 'Editar';

  @override
  String get delete => 'Eliminar';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get ok => 'OK';

  @override
  String get error => 'Error';

  @override
  String get success => 'Éxito';

  @override
  String get loading => 'Cargando...';

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
  String get customizeExperience => 'Personaliza tu experiencia OVLO tracker';

  @override
  String get appearance => 'Apariencia';

  @override
  String get support => 'Soporte';

  @override
  String get account => 'Cuenta';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get privacyAndSecurity => 'Privacidad y Seguridad';

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
  String get theme => 'Tema';

  @override
  String get themeSubtitle => 'Light or dark mode';

  @override
  String get lightTheme => 'Claro';

  @override
  String get darkTheme => 'Oscuro';

  @override
  String get systemTheme => 'Sistema';

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
  String get periodTracking => 'Seguimiento del Período';

  @override
  String get cycle => 'Cycle';

  @override
  String get periodCycle => 'Period Cycle';

  @override
  String get cycleLength => 'Duración del Ciclo';

  @override
  String get periodLength => 'Duración del Período';

  @override
  String get nextPeriod => 'Próximo Período';

  @override
  String get ovulation => 'Ovulación';

  @override
  String get fertile => 'Fértil';

  @override
  String get pms => 'SPM';

  @override
  String get period => 'Período';

  @override
  String get predicted => 'Predicted';

  @override
  String get flow => 'Flujo';

  @override
  String get menstrualFlow => 'Menstrual Flow';

  @override
  String get symptoms => 'Síntomas';

  @override
  String get mood => 'Estado de Ánimo';

  @override
  String get notes => 'Notas';

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
  String get journal => 'Diario';

  @override
  String get addEntry => 'Añadir Entrada';

  @override
  String get recentEntries => 'Entradas Recientes';

  @override
  String get enterYourThoughts => 'Escribe tus pensamientos...';

  @override
  String get howAreYouFeeling => '¿Cómo te sientes?';

  @override
  String get howDoYouFeelToday => 'How do you feel today?';

  @override
  String get feelingHint =>
      'Write how you\'re feeling today... Share your thoughts, symptoms, mood, or anything on your mind. This is is your safe space. 🌸';

  @override
  String get noEntriesFound => 'No entries found';

  @override
  String get selectMood => 'Seleccionar Estado de Ánimo';

  @override
  String get selectSymptoms => 'Seleccionar Síntomas';

  @override
  String get selectFlow => 'Seleccionar Flujo';

  @override
  String get signIn => 'Iniciar Sesión';

  @override
  String get signUp => 'Registrarse';

  @override
  String get email => 'Correo Electrónico';

  @override
  String get enterYourEmail => 'Enter Your Email';

  @override
  String get enterYourPassword => 'Enter Your Password';

  @override
  String get confirmYourPassword => 'Confirm Your Password';

  @override
  String get password => 'Contraseña';

  @override
  String get confirmPassword => 'Confirmar Contraseña';

  @override
  String get rememberMe => 'Remember Me';

  @override
  String get forgotPassword => '¿Olvidaste tu contraseña?';

  @override
  String get createAccount => 'Crear Cuenta';

  @override
  String get alreadyHaveAccount => '¿Ya tienes una cuenta?';

  @override
  String get dontHaveAccount => '¿No tienes una cuenta?';

  @override
  String get signOut => 'Cerrar Sesión';

  @override
  String get emailVerification => 'Verificación de Correo';

  @override
  String get verifyEmail => 'Verificar Correo';

  @override
  String get resendVerification => 'Reenviar Verificación';

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
  String get aiChat => 'Chat con IA';

  @override
  String get aiGreeting => 'Hi there! I\'m Ovlo AI - ask me anything, period.';

  @override
  String get aiAssist => 'Hi! How can i assist you today?';

  @override
  String get popularTopics => 'Popular Topics';

  @override
  String get askQuestion => 'Haz una pregunta...';

  @override
  String get typeAMessage => 'Type a message...';

  @override
  String get recentChats => 'Chats Recientes';

  @override
  String get quickQuestions => 'Preguntas Rápidas';

  @override
  String get chatWithAI => 'Chatear con IA';

  @override
  String get calendar => 'Calendario';

  @override
  String get today => 'Hoy';

  @override
  String get month => 'Mes';

  @override
  String get year => 'Year';

  @override
  String get week => 'Semana';

  @override
  String get day => 'Día';

  @override
  String get categories => 'Categorías';

  @override
  String get home => 'Inicio';

  @override
  String get insights => 'Perspectivas';

  @override
  String get profile => 'Perfil';

  @override
  String get profileSettings => 'Configuración del Perfil';

  @override
  String get name => 'Nombre';

  @override
  String get dateOfBirth => 'Fecha de Nacimiento';

  @override
  String get avatar => 'Avatar';

  @override
  String get personalInfo => 'Información Personal';

  @override
  String get help => 'Ayuda';

  @override
  String get faqs => 'Preguntas Frecuentes';

  @override
  String get contactSupport => 'Contactar Soporte';

  @override
  String get reportIssue => 'Reportar Problema';

  @override
  String get monday => 'Lunes';

  @override
  String get tuesday => 'Martes';

  @override
  String get wednesday => 'Miércoles';

  @override
  String get thursday => 'Jueves';

  @override
  String get friday => 'Viernes';

  @override
  String get saturday => 'Sábado';

  @override
  String get sunday => 'Domingo';

  @override
  String get january => 'Enero';

  @override
  String get february => 'Febrero';

  @override
  String get march => 'Marzo';

  @override
  String get april => 'Abril';

  @override
  String get may => 'Mayo';

  @override
  String get june => 'Junio';

  @override
  String get july => 'Julio';

  @override
  String get august => 'Agosto';

  @override
  String get september => 'Septiembre';

  @override
  String get october => 'Octubre';

  @override
  String get november => 'Noviembre';

  @override
  String get december => 'Diciembre';

  @override
  String get light => 'Ligero';

  @override
  String get medium => 'Medio';

  @override
  String get heavy => 'Abundante';

  @override
  String get spotting => 'Manchado';

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
