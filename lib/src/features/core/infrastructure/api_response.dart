import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();
  const factory ApiResponse.success(T data) = _Sucess;
  const factory ApiResponse.failure({int? errorCode, String? message}) = _Error;
}
