import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_failure.freezed.dart';

@freezed
class MovieFailure with _$MovieFailure {
  const MovieFailure._();
  const factory MovieFailure.api(int? errorCode, [String? message]) = _Api;
}
