import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_response.freezed.dart';

@freezed
class MovieRemoteResponse<T> with _$MovieRemoteResponse<T> {
  const MovieRemoteResponse._();
  const factory MovieRemoteResponse.noConnexion() = _NoConnexion<T>;
  const factory MovieRemoteResponse.notModified({required int maxPage}) =
      _NotModified<T>;
  const factory MovieRemoteResponse.withNewData(T data,
      {required int maxPage}) = _WithNewData<T>;
}
