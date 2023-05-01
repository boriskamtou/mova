// ignore_for_file: public_member_api_docs, sort_constructors_first
class UrlBuilder {
  // static const baseUrl = "https://api.themoviedb.org/3";

  final String _baseUrl;
  UrlBuilder({
    String? baseUrl,
  }) : _baseUrl = baseUrl ?? "https://api.themoviedb.org/3";

  String buildPopularMovies(String language, int page) {
    return '$_baseUrl/movie/popular?api_key=bcb184a317335ad93da00f543ab44f04&language=$language&page=$page';
  }

  String buildUpCommingMovies(String language, int page) {
    return '$_baseUrl/movie/upcoming?api_key=<bcb184a317335ad93da00f543ab44f04&language=$language&page=$page';
  }
}
