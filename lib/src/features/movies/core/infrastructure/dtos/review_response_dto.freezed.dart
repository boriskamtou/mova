// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewResponseDTO _$ReviewResponseDTOFromJson(Map<String, dynamic> json) {
  return _ReviewResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ReviewResponseDTO {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<ReviewDTO> get reviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewResponseDTOCopyWith<ReviewResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseDTOCopyWith<$Res> {
  factory $ReviewResponseDTOCopyWith(
          ReviewResponseDTO value, $Res Function(ReviewResponseDTO) then) =
      _$ReviewResponseDTOCopyWithImpl<$Res, ReviewResponseDTO>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<ReviewDTO> reviews,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$ReviewResponseDTOCopyWithImpl<$Res, $Val extends ReviewResponseDTO>
    implements $ReviewResponseDTOCopyWith<$Res> {
  _$ReviewResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? reviews = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDTO>,
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
abstract class _$$_ReviewResponseDTOCopyWith<$Res>
    implements $ReviewResponseDTOCopyWith<$Res> {
  factory _$$_ReviewResponseDTOCopyWith(_$_ReviewResponseDTO value,
          $Res Function(_$_ReviewResponseDTO) then) =
      __$$_ReviewResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<ReviewDTO> reviews,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_ReviewResponseDTOCopyWithImpl<$Res>
    extends _$ReviewResponseDTOCopyWithImpl<$Res, _$_ReviewResponseDTO>
    implements _$$_ReviewResponseDTOCopyWith<$Res> {
  __$$_ReviewResponseDTOCopyWithImpl(
      _$_ReviewResponseDTO _value, $Res Function(_$_ReviewResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? reviews = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_ReviewResponseDTO(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDTO>,
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
class _$_ReviewResponseDTO extends _ReviewResponseDTO {
  const _$_ReviewResponseDTO(
      {this.page = 1,
      @JsonKey(name: 'results') required final List<ReviewDTO> reviews,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _reviews = reviews,
        super._();

  factory _$_ReviewResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewResponseDTOFromJson(json);

  @override
  @JsonKey()
  final int page;
  final List<ReviewDTO> _reviews;
  @override
  @JsonKey(name: 'results')
  List<ReviewDTO> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'ReviewResponseDTO(page: $page, reviews: $reviews, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewResponseDTO &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_reviews), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewResponseDTOCopyWith<_$_ReviewResponseDTO> get copyWith =>
      __$$_ReviewResponseDTOCopyWithImpl<_$_ReviewResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewResponseDTOToJson(
      this,
    );
  }
}

abstract class _ReviewResponseDTO extends ReviewResponseDTO {
  const factory _ReviewResponseDTO(
          {final int page,
          @JsonKey(name: 'results') required final List<ReviewDTO> reviews,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$_ReviewResponseDTO;
  const _ReviewResponseDTO._() : super._();

  factory _ReviewResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewResponseDTO.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<ReviewDTO> get reviews;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewResponseDTOCopyWith<_$_ReviewResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
