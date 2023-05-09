// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponseDTO _$MovieResponseDTOFromJson(Map<String, dynamic> json) {
  return _MovieResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieResponseDTO {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieDTO> get movies => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseDTOCopyWith<MovieResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseDTOCopyWith<$Res> {
  factory $MovieResponseDTOCopyWith(
          MovieResponseDTO value, $Res Function(MovieResponseDTO) then) =
      _$MovieResponseDTOCopyWithImpl<$Res, MovieResponseDTO>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<MovieDTO> movies,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$MovieResponseDTOCopyWithImpl<$Res, $Val extends MovieResponseDTO>
    implements $MovieResponseDTOCopyWith<$Res> {
  _$MovieResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieDTO>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieResponseDTOCopyWith<$Res>
    implements $MovieResponseDTOCopyWith<$Res> {
  factory _$$_MovieResponseDTOCopyWith(
          _$_MovieResponseDTO value, $Res Function(_$_MovieResponseDTO) then) =
      __$$_MovieResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<MovieDTO> movies,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_MovieResponseDTOCopyWithImpl<$Res>
    extends _$MovieResponseDTOCopyWithImpl<$Res, _$_MovieResponseDTO>
    implements _$$_MovieResponseDTOCopyWith<$Res> {
  __$$_MovieResponseDTOCopyWithImpl(
      _$_MovieResponseDTO _value, $Res Function(_$_MovieResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_MovieResponseDTO(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieDTO>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieResponseDTO extends _MovieResponseDTO {
  const _$_MovieResponseDTO(
      {this.page = 1,
      @JsonKey(name: 'results') required final List<MovieDTO> movies,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _movies = movies,
        super._();

  factory _$_MovieResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResponseDTOFromJson(json);

  @override
  @JsonKey()
  final int page;
  final List<MovieDTO> _movies;
  @override
  @JsonKey(name: 'results')
  List<MovieDTO> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'MovieResponseDTO(page: $page, movies: $movies, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieResponseDTO &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_movies), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieResponseDTOCopyWith<_$_MovieResponseDTO> get copyWith =>
      __$$_MovieResponseDTOCopyWithImpl<_$_MovieResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResponseDTOToJson(
      this,
    );
  }
}

abstract class _MovieResponseDTO extends MovieResponseDTO {
  const factory _MovieResponseDTO(
          {final int page,
          @JsonKey(name: 'results') required final List<MovieDTO> movies,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$_MovieResponseDTO;
  const _MovieResponseDTO._() : super._();

  factory _MovieResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_MovieResponseDTO.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieDTO> get movies;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_MovieResponseDTOCopyWith<_$_MovieResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
