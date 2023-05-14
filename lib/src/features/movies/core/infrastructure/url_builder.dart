// ignore_for_file: public_member_api_docs, sort_constructors_first
class UrlBuilder {
  static const tmdbApiKey = String.fromEnvironment('api_key');

  static const baseUrl = "https://api.themoviedb.org/3";

  UrlBuilder();

  String buildPopularMovies(int page, [String language = 'en']) {
    return '$baseUrl/movie/popular?api_key=$tmdbApiKey&language=$language&page=$page';
  }

  String builTopRatedMovies(int page, [String language = 'en']) {
    return '$baseUrl/movie/top_rated?api_key=$tmdbApiKey&language=$language&page=$page';
  }

  String buildUpCommingMovies(int page, [String language = 'en']) {
    return '$baseUrl/movie/upcoming?api_key=$tmdbApiKey&language=$language&page=$page';
  }

  String buildMoviesVideos(int movieId) {
    return '$baseUrl/movie/$movieId/videos?api_key=$tmdbApiKey';
  }

  String buildMoviesReviews(int movieId) {
    return '$baseUrl/movie/$movieId/reviews?api_key=$tmdbApiKey';
  }
}
