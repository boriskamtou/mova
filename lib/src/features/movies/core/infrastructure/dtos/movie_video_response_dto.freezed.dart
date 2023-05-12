// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_video_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieVideoResponseDTO _$MovieVideoResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _MovieVideoResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieVideoResponseDTO {
  @JsonKey(name: 'id')
  int get movieId => throw _privateConstructorUsedError;
  List<MovieVideoDTO> get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideoResponseDTOCopyWith<MovieVideoResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideoResponseDTOCopyWith<$Res> {
  factory $MovieVideoResponseDTOCopyWith(MovieVideoResponseDTO value,
          $Res Function(MovieVideoResponseDTO) then) =
      _$MovieVideoResponseDTOCopyWithImpl<$Res, MovieVideoResponseDTO>;
  @useResult
  $Res call({@JsonKey(name: 'id') int movieId, List<MovieVideoDTO> videos});
}

/// @nodoc
class _$MovieVideoResponseDTOCopyWithImpl<$Res,
        $Val extends MovieVideoResponseDTO>
    implements $MovieVideoResponseDTOCopyWith<$Res> {
  _$MovieVideoResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<MovieVideoDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieVideoResponseDTOCopyWith<$Res>
    implements $MovieVideoResponseDTOCopyWith<$Res> {
  factory _$$_MovieVideoResponseDTOCopyWith(_$_MovieVideoResponseDTO value,
          $Res Function(_$_MovieVideoResponseDTO) then) =
      __$$_MovieVideoResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int movieId, List<MovieVideoDTO> videos});
}

/// @nodoc
class __$$_MovieVideoResponseDTOCopyWithImpl<$Res>
    extends _$MovieVideoResponseDTOCopyWithImpl<$Res, _$_MovieVideoResponseDTO>
    implements _$$_MovieVideoResponseDTOCopyWith<$Res> {
  __$$_MovieVideoResponseDTOCopyWithImpl(_$_MovieVideoResponseDTO _value,
      $Res Function(_$_MovieVideoResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? videos = null,
  }) {
    return _then(_$_MovieVideoResponseDTO(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<MovieVideoDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieVideoResponseDTO extends _MovieVideoResponseDTO {
  const _$_MovieVideoResponseDTO(
      {@JsonKey(name: 'id') required this.movieId,
      final List<MovieVideoDTO> videos = const []})
      : _videos = videos,
        super._();

  factory _$_MovieVideoResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MovieVideoResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int movieId;
  final List<MovieVideoDTO> _videos;
  @override
  @JsonKey()
  List<MovieVideoDTO> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'MovieVideoResponseDTO(movieId: $movieId, videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieVideoResponseDTO &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, movieId, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieVideoResponseDTOCopyWith<_$_MovieVideoResponseDTO> get copyWith =>
      __$$_MovieVideoResponseDTOCopyWithImpl<_$_MovieVideoResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieVideoResponseDTOToJson(
      this,
    );
  }
}

abstract class _MovieVideoResponseDTO extends MovieVideoResponseDTO {
  const factory _MovieVideoResponseDTO(
      {@JsonKey(name: 'id') required final int movieId,
      final List<MovieVideoDTO> videos}) = _$_MovieVideoResponseDTO;
  const _MovieVideoResponseDTO._() : super._();

  factory _MovieVideoResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_MovieVideoResponseDTO.fromJson;

  @override
  @JsonKey(name: 'id')
  int get movieId;
  @override
  List<MovieVideoDTO> get videos;
  @override
  @JsonKey(ignore: true)
  _$$_MovieVideoResponseDTOCopyWith<_$_MovieVideoResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
