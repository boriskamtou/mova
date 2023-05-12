// ignore_for_file: public_member_api_docs, sort_constructors_first
class UrlBuilder {
  static const baseUrl = "https://api.themoviedb.org/3";

  UrlBuilder();

  String buildPopularMovies(int page, [String language = 'en']) {
    return '$baseUrl/movie/popular?api_key=bcb184a317335ad93da00f543ab44f04&language=$language&page=$page';
  }

  String builTopRatedMovies(int page, [String language = 'en']) {
    return '$baseUrl/movie/top_rated?api_key=bcb184a317335ad93da00f543ab44f04&language=$language&page=$page';
  }

  String buildUpCommingMovies(String language, int page) {
    return '$baseUrl/movie/upcoming?api_key=bcb184a317335ad93da00f543ab44f04&language=$language&page=$page';
  }
}
