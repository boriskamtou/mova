class MovieException implements Exception {
  final int? errorCode;
  final String? errorMessage;
  final Exception? exception;

  MovieException({this.errorCode, this.errorMessage, this.exception});
}
