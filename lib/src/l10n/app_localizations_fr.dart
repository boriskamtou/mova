import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Mova';

  @override
  String get paginatedMoviesGridView => 'Vous n\'êtes pas connecté à internet. Veillez vérifier votre connection.';

  @override
  String get onboardingScreenGetStartedLabel => 'Commencer';

  @override
  String get onboardingScreenWelcomeToMovaTitleOne => 'Bienvenue sur Mova';

  @override
  String get onboardingScreenWelcomeToMovaTitleTwo => 'Un nouveau monde de films';

  @override
  String get onboardingScreenWelcomeToMovaDescriptionOne => 'The best movie streaming app of the century\nto make your days great!';

  @override
  String get onboardingScreenWelcomeToMovaTitleThree => 'Films, Series & Plus';

  @override
  String get onboardingScreenWelcomeToMovaDescriptionTwo => 'Discover how you can stream\nin other way!';

  @override
  String get onboardingScreenWelcomeToMovaDescriptionThree => 'We have a tons of movies, shows\nanimes, drame waiting for you!';

  @override
  String get signInScreenLoginLabel => 'Connectez-vous';

  @override
  String get signInScreenCreateAccountLabel => 'Creez un compte';

  @override
  String get signInScreenEmailHintText => 'Email';

  @override
  String get signInScreenPasswordHintText => 'Mot de passe';

  @override
  String get signInScreenOrContinueWithtLabel => 'Ou continuer avec';

  @override
  String get signInScreenButtonSignInLabel => 'Connectez-vous';

  @override
  String get signInScreenButtonSignUpLabel => 'Créez un compte';

  @override
  String get signInScreenDontHaveAnAccountLabel => 'Vous n\'avez pas de compte?';

  @override
  String get signInScreenAlreadyHaveAnAccountLabel => 'Vous avez déjà un compte?';

  @override
  String get homeTabSeeAllButtonLabel => 'Voir tout';

  @override
  String homeTabMovieAddToBookmarkLabel(String movieTitle) {
    return '$movieTitle a été ajouté à votre list';
  }

  @override
  String get homeTabTopTenPopularMovies => 'Top 10 Des Films Populaires';

  @override
  String get homeTabTopTenRatedMovies => 'Top 10 Des Mieux Notés';

  @override
  String get homeTabTopTenTrendingMovies => 'Films en vogue';

  @override
  String get homeTabNoTopPopularMovieFoundLabel => 'Aucun Fiml Populaire Trouvé';

  @override
  String get homeTabNoTopRatedMovieFoundLabel => 'Aucun Film Mieux Noté Trouvé';

  @override
  String get homeTabNoTopTrendingMovieFoundLabel => 'Aucun Film Tendance Trouvé';

  @override
  String get bookmarkTabMovieDeleteSuccessfullyLabel => 'Film supprimé avec succès';

  @override
  String get bookmarkTabMyListLabel => 'Ma Liste';

  @override
  String get bookmarkTabMyDeleteLabel => 'Supprimer';

  @override
  String get bookmarkTabAreYouSureYouWantToDeleteMovieLabel => 'Êtes-vous sûr de vouloir supprimer ce\nfilm de votre list?';

  @override
  String get bookmarkTabCancelDeleteMovieLabel => 'Annuler';

  @override
  String get bookmarkTabYesDeleteMovieLabel => 'Oui, supprimer';

  @override
  String get searchTabSearchMovieLabel => 'Rechercher un film...';

  @override
  String get searchTabSearchButtonSemanticLabel => 'Rechercher un film';

  @override
  String get searchTabClearButtonSemanticLabel => 'Supprimer la recherche';

  @override
  String get searchTabRecentSearchLabel => 'Aucune recherche récente';

  @override
  String get searchTabNoMovieFoundLabel => 'Aucun film trouvé!';

  @override
  String get searchTabNoMovieSearchTitleLabel => 'Aucun film trouvé!';

  @override
  String get searchTabNoMovieSearchDesciptionLabel => 'Il semble que vous n\'avez pas \nencore trouvé le film que vous recherchez.';

  @override
  String get profileTabProfileLabel => 'Profil';

  @override
  String get profileTabEditProfileLabel => 'Mise à jour du profil';

  @override
  String get profileTabLanguageLabel => 'Langue';

  @override
  String get profileTabThemeModeLabel => 'Thème sombre';

  @override
  String get profileTabMovieDescriptionLabel => 'Mova - Streaming App';

  @override
  String get profileTabMadeByLabel => 'Développé par WCS';

  @override
  String get profileTabAboutLabel => 'A propos';

  @override
  String get profileTabLogoutLabel => 'Déconnexion';

  @override
  String get topRateMovieScreenTopRatedTitleLabel => 'Films les mieux notés';

  @override
  String get topRateMovieScreenNoTopRatedMovieFoundLabel => 'Aucun Film Trouvé!';

  @override
  String get popularMovieScreenTitleLabel => 'Films populaires';

  @override
  String get popularMoviesScreenNoMoviesFoundLabel => 'Aucun film populaire trouvé!';

  @override
  String get topRatedMovieScreenTitleLabel => 'Films les mieux notés';

  @override
  String get topRatedMovieScreenNoMoviesFoundLabel => 'Aucun film trouvé!';

  @override
  String movieDetailScreenAddMovieToBookmarkLabel(String movieTitle) {
    return '$movieTitle a été ajouté à votre list';
  }

  @override
  String get movieDetailScreenViewMoreLabel => 'Voir plus';

  @override
  String get movieDetailScreenViewLessLabel => 'Voir moins';

  @override
  String get movieDetailScreenTrailersTabLabel => 'Trailers';

  @override
  String get movieDetailScreenSimilarsTabLabel => 'Similaires';

  @override
  String get movieDetailScreenCommentsTabLabel => 'Commentaires';

  @override
  String get movieDetailSharedWithLabel => 'Partager Avec';

  @override
  String get movieDetailScreenNoSimilarMoviesFoundLabel => 'Aucun film similaires trouvé';

  @override
  String movieDetailScreenGenreLabel(String genres) {
    return 'Genre: $genres';
  }
}
