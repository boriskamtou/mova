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

  /// No description provided for @paginatedMoviesGridView.
  ///
  /// In en, this message translates to:
  /// **'You are not connected. Please check your network connexion.'**
  String get paginatedMoviesGridView;

  /// No description provided for @homeScreenHomeLabel.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeScreenHomeLabel;

  /// No description provided for @homeScreenDiscoveryLabel.
  ///
  /// In en, this message translates to:
  /// **'Discovery'**
  String get homeScreenDiscoveryLabel;

  /// No description provided for @homeScreenBookmarkLabel.
  ///
  /// In en, this message translates to:
  /// **'Bookmark'**
  String get homeScreenBookmarkLabel;

  /// No description provided for @homeScreenDownloadLabel.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get homeScreenDownloadLabel;

  /// No description provided for @homeScreenProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get homeScreenProfileLabel;

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

  /// No description provided for @homeTabSeeAllButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get homeTabSeeAllButtonLabel;

  /// No description provided for @homeTabMovieAddToBookmarkLabel.
  ///
  /// In en, this message translates to:
  /// **'{movieTitle} has been add to your list'**
  String homeTabMovieAddToBookmarkLabel(String movieTitle);

  /// No description provided for @homeTabTopTenPopularMovies.
  ///
  /// In en, this message translates to:
  /// **'Top 10 Popular Movies'**
  String get homeTabTopTenPopularMovies;

  /// No description provided for @homeTabTopTenRatedMovies.
  ///
  /// In en, this message translates to:
  /// **'Top 10 Rated Movies'**
  String get homeTabTopTenRatedMovies;

  /// No description provided for @homeTabTopTenTrendingMovies.
  ///
  /// In en, this message translates to:
  /// **'Trending Movies'**
  String get homeTabTopTenTrendingMovies;

  /// No description provided for @homeTabNoTopPopularMovieFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No Top Popular Movies Found!'**
  String get homeTabNoTopPopularMovieFoundLabel;

  /// No description provided for @homeTabNoTopRatedMovieFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No Top Rated Movies Found!'**
  String get homeTabNoTopRatedMovieFoundLabel;

  /// No description provided for @homeTabNoTopTrendingMovieFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No Trending Movies Found!'**
  String get homeTabNoTopTrendingMovieFoundLabel;

  /// No description provided for @homeTabMyListLabel.
  ///
  /// In en, this message translates to:
  /// **'My List'**
  String get homeTabMyListLabel;

  /// No description provided for @homeTabPlayLabel.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get homeTabPlayLabel;

  /// No description provided for @bookmarkTabMovieDeleteSuccessfullyLabel.
  ///
  /// In en, this message translates to:
  /// **'Movie deleted successfully'**
  String get bookmarkTabMovieDeleteSuccessfullyLabel;

  /// No description provided for @bookmarkTabMyListLabel.
  ///
  /// In en, this message translates to:
  /// **'My List'**
  String get bookmarkTabMyListLabel;

  /// No description provided for @bookmarkTabMyDeleteLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get bookmarkTabMyDeleteLabel;

  /// No description provided for @bookmarkTabAreYouSureYouWantToDeleteMovieLabel.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this\nmovie bookmark?'**
  String get bookmarkTabAreYouSureYouWantToDeleteMovieLabel;

  /// No description provided for @bookmarkTabCancelDeleteMovieLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get bookmarkTabCancelDeleteMovieLabel;

  /// No description provided for @bookmarkTabYesDeleteMovieLabel.
  ///
  /// In en, this message translates to:
  /// **'Yes, delete'**
  String get bookmarkTabYesDeleteMovieLabel;

  /// No description provided for @searchTabSearchMovieLabel.
  ///
  /// In en, this message translates to:
  /// **'Search movie...'**
  String get searchTabSearchMovieLabel;

  /// No description provided for @searchTabSearchButtonSemanticLabel.
  ///
  /// In en, this message translates to:
  /// **'Search Movie'**
  String get searchTabSearchButtonSemanticLabel;

  /// No description provided for @searchTabClearButtonSemanticLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete Searched Movie'**
  String get searchTabClearButtonSemanticLabel;

  /// No description provided for @searchTabRecentSearchLabel.
  ///
  /// In en, this message translates to:
  /// **'No rencent searchs found!'**
  String get searchTabRecentSearchLabel;

  /// No description provided for @searchTabNoMovieFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No movies found!'**
  String get searchTabNoMovieFoundLabel;

  /// No description provided for @searchTabNoMovieSearchTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'No movies found!'**
  String get searchTabNoMovieSearchTitleLabel;

  /// No description provided for @searchTabNoMovieSearchDesciptionLabel.
  ///
  /// In en, this message translates to:
  /// **'It seems that you haven\'t found\nyet the movie your\'re looking for'**
  String get searchTabNoMovieSearchDesciptionLabel;

  /// No description provided for @searchTabCannotLoadRecentSearchsLabel.
  ///
  /// In en, this message translates to:
  /// **'Can\'t load recent searchs'**
  String get searchTabCannotLoadRecentSearchsLabel;

  /// No description provided for @profileTabProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTabProfileLabel;

  /// No description provided for @profileTabEditProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profileTabEditProfileLabel;

  /// No description provided for @profileTabLanguageLabel.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get profileTabLanguageLabel;

  /// No description provided for @profileTabThemeModeLabel.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get profileTabThemeModeLabel;

  /// No description provided for @profileTabMovieDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Mova - Streaming App'**
  String get profileTabMovieDescriptionLabel;

  /// No description provided for @profileTabMadeByLabel.
  ///
  /// In en, this message translates to:
  /// **'Made by WCS'**
  String get profileTabMadeByLabel;

  /// No description provided for @profileTabAboutLabel.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get profileTabAboutLabel;

  /// No description provided for @profileTabLogoutLabel.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get profileTabLogoutLabel;

  /// No description provided for @topRateMovieScreenTopRatedTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Movies'**
  String get topRateMovieScreenTopRatedTitleLabel;

  /// No description provided for @topRateMovieScreenNoTopRatedMovieFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No Top Rated Movies!'**
  String get topRateMovieScreenNoTopRatedMovieFoundLabel;

  /// No description provided for @popularMovieScreenTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Popular Movies'**
  String get popularMovieScreenTitleLabel;

  /// No description provided for @popularMoviesScreenNoMoviesFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No Popular Movies Found!'**
  String get popularMoviesScreenNoMoviesFoundLabel;

  /// No description provided for @topRatedMovieScreenTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Movies'**
  String get topRatedMovieScreenTitleLabel;

  /// No description provided for @topRatedMovieScreenNoMoviesFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No Top Rated Movies Found!'**
  String get topRatedMovieScreenNoMoviesFoundLabel;

  /// No description provided for @movieDetailScreenAddMovieToBookmarkLabel.
  ///
  /// In en, this message translates to:
  /// **'{movieTitle} has been add to your list'**
  String movieDetailScreenAddMovieToBookmarkLabel(String movieTitle);

  /// No description provided for @movieDetailScreenPlayLabel.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get movieDetailScreenPlayLabel;

  /// No description provided for @movieDetailScreenViewMoreLabel.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get movieDetailScreenViewMoreLabel;

  /// No description provided for @movieDetailScreenViewLessLabel.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get movieDetailScreenViewLessLabel;

  /// No description provided for @movieDetailScreenTrailersTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Trailers'**
  String get movieDetailScreenTrailersTabLabel;

  /// No description provided for @movieDetailScreenSimilarsTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Similars'**
  String get movieDetailScreenSimilarsTabLabel;

  /// No description provided for @movieDetailScreenCommentsTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get movieDetailScreenCommentsTabLabel;

  /// No description provided for @movieDetailSharedWithLabel.
  ///
  /// In en, this message translates to:
  /// **'Share with'**
  String get movieDetailSharedWithLabel;

  /// No description provided for @movieDetailScreenNoSimilarMoviesFoundLabel.
  ///
  /// In en, this message translates to:
  /// **'No Similar movies found'**
  String get movieDetailScreenNoSimilarMoviesFoundLabel;

  /// No description provided for @movieDetailScreenGenreLabel.
  ///
  /// In en, this message translates to:
  /// **'Genre: {genres}'**
  String movieDetailScreenGenreLabel(String genres);

  /// No description provided for @languageScreenTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languageScreenTitleLabel;

  /// No description provided for @languageScreenFrenchLabel.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get languageScreenFrenchLabel;

  /// No description provided for @languageScreenEnglishLabel.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageScreenEnglishLabel;
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
