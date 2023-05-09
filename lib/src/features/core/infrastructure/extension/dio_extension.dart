import 'dart:io';

import 'package:dio/dio.dart';

extension DioExtension on DioError {
  bool get noConnexionError =>
      type == DioErrorType.unknown && error is SocketException;
}
