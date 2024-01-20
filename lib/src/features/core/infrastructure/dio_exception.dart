import 'package:dio/dio.dart';

class DioExceptionHandler implements Exception {
  DioExceptionHandler.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.unknown:
        message = "Connection to API server failed due to internet connection";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.badResponse:
        message = _handleError(dioError.response!.statusCode);
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String? message;

  String _handleError(statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Authentication failed: You do not have permissions to access the service.';
      case 404:
        return 'Invalid id: The pre-requisite id is invalid or not found.';
      case 500:
        return 'Internal error: Something went wrong, contact Mova.';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message.toString();
}
