// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailDTO _$MovieDetailDTOFromJson(Map<String, dynamic> json) {
  return _MovieDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailDTO {
  int get id => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genres')
  List<GenreDTO> get genresDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'homepage')
  String? get homePage => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  double get revenue => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  double get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailDTOCopyWith<MovieDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailDTOCopyWith<$Res> {
  factory $MovieDetailDTOCopyWith(
          MovieDetailDTO value, $Res Function(MovieDetailDTO) then) =
      _$MovieDetailDTOCopyWithImpl<$Res, MovieDetailDTO>;
  @useResult
  $Res call(
      {int id,
      bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'genres') List<GenreDTO> genresDto,
      @JsonKey(name: 'homepage') String? homePage,
      @JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      double revenue,
      String status,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') double voteCount});
}

/// @nodoc
class _$MovieDetailDTOCopyWithImpl<$Res, $Val extends MovieDetailDTO>
    implements $MovieDetailDTOCopyWith<$Res> {
  _$MovieDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genresDto = null,
    Object? homePage = freezed,
    Object? imdbId = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = null,
    Object? status = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genresDto: null == genresDto
          ? _value.genresDto
          : genresDto // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
      homePage: freezed == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieDetailDTOCopyWith<$Res>
    implements $MovieDetailDTOCopyWith<$Res> {
  factory _$$_MovieDetailDTOCopyWith(
          _$_MovieDetailDTO value, $Res Function(_$_MovieDetailDTO) then) =
      __$$_MovieDetailDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'genres') List<GenreDTO> genresDto,
      @JsonKey(name: 'homepage') String? homePage,
      @JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      double revenue,
      String status,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') double voteCount});
}

/// @nodoc
class __$$_MovieDetailDTOCopyWithImpl<$Res>
    extends _$MovieDetailDTOCopyWithImpl<$Res, _$_MovieDetailDTO>
    implements _$$_MovieDetailDTOCopyWith<$Res> {
  __$$_MovieDetailDTOCopyWithImpl(
      _$_MovieDetailDTO _value, $Res Function(_$_MovieDetailDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genresDto = null,
    Object? homePage = freezed,
    Object? imdbId = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = null,
    Object? status = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$_MovieDetailDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genresDto: null == genresDto
          ? _value._genresDto
          : genresDto // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
      homePage: freezed == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailDTO extends _MovieDetailDTO {
  const _$_MovieDetailDTO(
      {required this.id,
      required this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'genres') required final List<GenreDTO> genresDto,
      @JsonKey(name: 'homepage') this.homePage,
      @JsonKey(name: 'imdb_id') required this.imdbId,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'release_date') this.releaseDate,
      required this.revenue,
      required this.status,
      required this.title,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount})
      : _genresDto = genresDto,
        super._();

  factory _$_MovieDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailDTOFromJson(json);

  @override
  final int id;
  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<GenreDTO> _genresDto;
  @override
  @JsonKey(name: 'genres')
  List<GenreDTO> get genresDto {
    if (_genresDto is EqualUnmodifiableListView) return _genresDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genresDto);
  }

  @override
  @JsonKey(name: 'homepage')
  final String? homePage;
  @override
  @JsonKey(name: 'imdb_id')
  final String imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final double revenue;
  @override
  final String status;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final double voteCount;

  @override
  String toString() {
    return 'MovieDetailDTO(id: $id, adult: $adult, backdropPath: $backdropPath, genresDto: $genresDto, homePage: $homePage, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, status: $status, title: $title, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality()
                .equals(other._genresDto, _genresDto) &&
            (identical(other.homePage, homePage) ||
                other.homePage == homePage) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genresDto),
      homePage,
      imdbId,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      revenue,
      status,
      title,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailDTOCopyWith<_$_MovieDetailDTO> get copyWith =>
      __$$_MovieDetailDTOCopyWithImpl<_$_MovieDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailDTOToJson(
      this,
    );
  }
}

abstract class _MovieDetailDTO extends MovieDetailDTO {
  const factory _MovieDetailDTO(
      {required final int id,
      required final bool adult,
      @JsonKey(name: 'backdrop_path')
          final String? backdropPath,
      @JsonKey(name: 'genres')
          required final List<GenreDTO> genresDto,
      @JsonKey(name: 'homepage')
          final String? homePage,
      @JsonKey(name: 'imdb_id')
          required final String imdbId,
      @JsonKey(name: 'original_language')
          required final String originalLanguage,
      @JsonKey(name: 'original_title')
          required final String originalTitle,
      required final String overview,
      required final double popularity,
      @JsonKey(name: 'poster_path')
          final String? posterPath,
      @JsonKey(name: 'release_date')
          final String? releaseDate,
      required final double revenue,
      required final String status,
      required final String title,
      @JsonKey(name: 'vote_average')
          required final double voteAverage,
      @JsonKey(name: 'vote_count')
          required final double voteCount}) = _$_MovieDetailDTO;
  const _MovieDetailDTO._() : super._();

  factory _MovieDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailDTO.fromJson;

  @override
  int get id;
  @override
  bool get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'genres')
  List<GenreDTO> get genresDto;
  @override
  @JsonKey(name: 'homepage')
  String? get homePage;
  @override
  @JsonKey(name: 'imdb_id')
  String get imdbId;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  double get revenue;
  @override
  String get status;
  @override
  String get title;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  double get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailDTOCopyWith<_$_MovieDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
