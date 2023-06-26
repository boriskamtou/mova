import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// App Title
  ///
  /// In en, this message translates to:
  /// **'Mova'**
  String get appTitle;

  /// No description provided for @onboardingScreenGetStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onboardingScreenGetStartedLabel;

  /// No description provided for @onboardingScreenWelcomeToMovaTitleOne.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Mova'**
  String get onboardingScreenWelcomeToMovaTitleOne;

  /// No description provided for @onboardingScreenWelcomeToMovaTitleTwo.
  ///
  /// In en, this message translates to:
  /// **'A new world of Movies'**
  String get onboardingScreenWelcomeToMovaTitleTwo;

  /// No description provided for @onboardingScreenWelcomeToMovaDescriptionOne.
  ///
  /// In en, this message translates to:
  /// **'The best movie streaming app of the century\nto make your days great!'**
  String get onboardingScreenWelcomeToMovaDescriptionOne;

  /// No description provided for @onboardingScreenWelcomeToMovaTitleThree.
  ///
  /// In en, this message translates to:
  /// **'Movies, Shows & More'**
  String get onboardingScreenWelcomeToMovaTitleThree;

  /// No description provided for @onboardingScreenWelcomeToMovaDescriptionTwo.
  ///
  /// In en, this message translates to:
  /// **'Discover how you can stream\nin other way!'**
  String get onboardingScreenWelcomeToMovaDescriptionTwo;

  /// No description provided for @onboardingScreenWelcomeToMovaDescriptionThree.
  ///
  /// In en, this message translates to:
  /// **'We have a tons of movies, shows\nanimes, drame waiting for you!'**
  String get onboardingScreenWelcomeToMovaDescriptionThree;

  /// No description provided for @signInScreenLoginLabel.
  ///
  /// In en, this message translates to:
  /// **'Login to Your Account'**
  String get signInScreenLoginLabel;

  /// No description provided for @signInScreenCreateAccountLabel.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get signInScreenCreateAccountLabel;

  /// No description provided for @signInScreenEmailHintText.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get signInScreenEmailHintText;

  /// No description provided for @signInScreenPasswordHintText.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signInScreenPasswordHintText;

  /// No description provided for @signInScreenOrContinueWithtLabel.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get signInScreenOrContinueWithtLabel;

  /// No description provided for @signInScreenButtonSignInLabel.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signInScreenButtonSignInLabel;

  /// No description provided for @signInScreenButtonSignUpLabel.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signInScreenButtonSignUpLabel;

  /// No description provided for @signInScreenDontHaveAnAccountLabel.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get signInScreenDontHaveAnAccountLabel;

  /// No description provided for @signInScreenAlreadyHaveAnAccountLabel.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get signInScreenAlreadyHaveAnAccountLabel;

  /// No description provided for @homeScreenSeeAllButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get homeScreenSeeAllButtonLabel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
