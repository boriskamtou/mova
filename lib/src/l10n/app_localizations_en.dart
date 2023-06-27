import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Mova';

  @override
  String get paginatedMoviesGridView => 'You are not connected. Please check your network connexion.';

  @override
  String get onboardingScreenGetStartedLabel => 'Get Started';

  @override
  String get onboardingScreenWelcomeToMovaTitleOne => 'Welcome to Mova';

  @override
  String get onboardingScreenWelcomeToMovaTitleTwo => 'A new world of Movies';

  @override
  String get onboardingScreenWelcomeToMovaDescriptionOne => 'The best movie streaming app of the century\nto make your days great!';

  @override
  String get onboardingScreenWelcomeToMovaTitleThree => 'Movies, Shows & More';

  @override
  String get onboardingScreenWelcomeToMovaDescriptionTwo => 'Discover how you can stream\nin other way!';

  @override
  String get onboardingScreenWelcomeToMovaDescriptionThree => 'We have a tons of movies, shows\nanimes, drame waiting for you!';

  @override
  String get signInScreenLoginLabel => 'Login to Your Account';

  @override
  String get signInScreenCreateAccountLabel => 'Create your account';

  @override
  String get signInScreenEmailHintText => 'Email';

  @override
  String get signInScreenPasswordHintText => 'Password';

  @override
  String get signInScreenOrContinueWithtLabel => 'Or continue with';

  @override
  String get signInScreenButtonSignInLabel => 'Sign In';

  @override
  String get signInScreenButtonSignUpLabel => 'Sign Up';

  @override
  String get signInScreenDontHaveAnAccountLabel => 'Don’t have an account?';

  @override
  String get signInScreenAlreadyHaveAnAccountLabel => 'Already have an account?';

  @override
  String get homeTabSeeAllButtonLabel => 'See all';

  @override
  String homeTabMovieAddToBookmarkLabel(String movieTitle) {
    return '$movieTitle has been add to your list';
  }

  @override
  String get homeTabTopTenPopularMovies => 'Top 10 Popular Movies';

  @override
  String get homeTabTopTenRatedMovies => 'Top 10 Rated Movies';

  @override
  String get homeTabTopTenTrendingMovies => 'Trending Movies';

  @override
  String get homeTabNoTopPopularMovieFoundLabel => 'No Top Popular Movies Found!';

  @override
  String get homeTabNoTopRatedMovieFoundLabel => 'No Top Rated Movies Found!';

  @override
  String get homeTabNoTopTrendingMovieFoundLabel => 'No Trending Movies Found!';

  @override
  String get bookmarkTabMovieDeleteSuccessfullyLabel => 'Movie deleted successfully';

  @override
  String get bookmarkTabMyListLabel => 'My List';

  @override
  String get bookmarkTabMyDeleteLabel => 'Delete';

  @override
  String get bookmarkTabAreYouSureYouWantToDeleteMovieLabel => 'Are you sure you want to delete this\nmovie bookmark?';

  @override
  String get bookmarkTabCancelDeleteMovieLabel => 'Cancel';

  @override
  String get bookmarkTabYesDeleteMovieLabel => 'Yes, delete';

  @override
  String get searchTabSearchMovieLabel => 'Search movie...';

  @override
  String get searchTabSearchButtonSemanticLabel => 'Search Movie';

  @override
  String get searchTabClearButtonSemanticLabel => 'Delete Searched Movie';

  @override
  String get searchTabRecentSearchLabel => 'No rencent searchs found!';

  @override
  String get searchTabNoMovieFoundLabel => 'No movies found!';

  @override
  String get searchTabNoMovieSearchTitleLabel => 'No movies found!';

  @override
  String get searchTabNoMovieSearchDesciptionLabel => 'It seems that you haven\'t found\nyet the movie your\'re looking for';

  @override
  String get profileTabProfileLabel => 'Profile';

  @override
  String get profileTabEditProfileLabel => 'Edit Profile';

  @override
  String get profileTabLanguageLabel => 'Language';

  @override
  String get profileTabThemeModeLabel => 'Dark Mode';

  @override
  String get profileTabMovieDescriptionLabel => 'Mova - Streaming App';

  @override
  String get profileTabMadeByLabel => 'Made by WCS';

  @override
  String get profileTabAboutLabel => 'About';

  @override
  String get profileTabLogoutLabel => 'Logout';

  @override
  String get topRateMovieScreenTopRatedTitleLabel => 'Top Rated Movies';

  @override
  String get topRateMovieScreenNoTopRatedMovieFoundLabel => 'No Top Rated Movies!';

  @override
  String get popularMovieScreenTitleLabel => 'Popular Movies';

  @override
  String get popularMoviesScreenNoMoviesFoundLabel => 'No Popular Movies Found!';

  @override
  String get topRatedMovieScreenTitleLabel => 'Top Rated Movies';

  @override
  String get topRatedMovieScreenNoMoviesFoundLabel => 'No Top Rated Movies Found!';

  @override
  String movieDetailScreenAddMovieToBookmarkLabel(String movieTitle) {
    return '$movieTitle has been add to your list';
  }

  @override
  String get movieDetailScreenViewMoreLabel => 'View more';

  @override
  String get movieDetailScreenViewLessLabel => 'View more';

  @override
  String get movieDetailScreenTrailersTabLabel => 'Trailers';

  @override
  String get movieDetailScreenSimilarsTabLabel => 'Similars';

  @override
  String get movieDetailScreenCommentsTabLabel => 'Comments';

  @override
  String get movieDetailSharedWithLabel => 'Share with';

  @override
  String get movieDetailScreenNoSimilarMoviesFoundLabel => 'No Similar movies found';

  @override
  String movieDetailScreenGenreLabel(String genres) {
    return 'Genre: $genres';
  }

  @override
  String get languageScreenTitleLabel => 'Languages';

  @override
  String get languageScreenFrenchLabel => 'French';

  @override
  String get languageScreenEnglishLabel => 'English';
}
