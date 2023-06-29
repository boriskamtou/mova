// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'api_key.dart';

class UrlBuilder {
  static const tmdbApiKey = ApiKey.apiKey;

  static const baseUrl = "https://api.themoviedb.org/3";

  UrlBuilder();

  String buildPopularMovies(int page, [String language = 'en']) =>
      '$baseUrl/movie/popular?api_key=$tmdbApiKey&language=$language&page=$page';

  String builTopRatedMovies(int page, [String language = 'en']) =>
      '$baseUrl/movie/top_rated?api_key=$tmdbApiKey&language=$language&page=$page';

  String buildUpCommingMovies(int page, [String language = 'en']) =>
      '$baseUrl/movie/upcoming?api_key=$tmdbApiKey&language=$language&page=$page';

  String buildMoviesVideos(int movieId, [String language = 'en']) =>
      '$baseUrl/movie/$movieId/videos?api_key=$tmdbApiKey';

  String buildMoviesReviews(int movieId, [String language = 'en']) =>
      '$baseUrl/movie/$movieId/reviews?api_key=$tmdbApiKey';

  String buildMoviesDetail(int movieId, [String language = 'en']) =>
      '$baseUrl/movie/$movieId?api_key=$tmdbApiKey';

  String buildSimilarMoviesReviews(int movieId, int page,
          [String language = 'en']) =>
      '$baseUrl/movie/$movieId/similar?api_key=$tmdbApiKey&language=$language&page=$page';

  String buildSearchMovie(String searchTerm, int page,
          [String language = 'en']) =>
      '$baseUrl/search/movie?query=$searchTerm&api_key=$tmdbApiKey&page=$page';
}
