import 'package:freezed_annotation/freezed_annotation.dart';

part 'fill_profil_failure.freezed.dart';

@freezed
class FillProfileFailure with _$FillProfileFailure {
  const FillProfileFailure._();
  const factory FillProfileFailure.failure([String? message]) = _Failure;
}
