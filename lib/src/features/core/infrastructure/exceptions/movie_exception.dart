class MovieException implements Exception {
  final int? errorCode;
  final String? errorMessage;

  MovieException({this.errorCode, this.errorMessage});
}
