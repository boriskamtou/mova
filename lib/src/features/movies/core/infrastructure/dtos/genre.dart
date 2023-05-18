import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';

@freezed
class Genre with _$Genre {
  const Genre._();
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;
}
