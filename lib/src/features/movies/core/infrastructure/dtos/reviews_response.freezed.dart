// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewResponse _$ReviewResponseFromJson(Map<String, dynamic> json) {
  return _ReviewResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewResponse {
  int get page => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewResponseCopyWith<ReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseCopyWith<$Res> {
  factory $ReviewResponseCopyWith(
          ReviewResponse value, $Res Function(ReviewResponse) then) =
      _$ReviewResponseCopyWithImpl<$Res, ReviewResponse>;
  @useResult
  $Res call({int page, List<Review> reviews, int totalPages, int totalResults});
}

/// @nodoc
class _$ReviewResponseCopyWithImpl<$Res, $Val extends ReviewResponse>
    implements $ReviewResponseCopyWith<$Res> {
  _$ReviewResponseCopyWithImpl(this._value, this._then);

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
              as List<Review>,
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
abstract class _$$_ReviewResponseCopyWith<$Res>
    implements $ReviewResponseCopyWith<$Res> {
  factory _$$_ReviewResponseCopyWith(
          _$_ReviewResponse value, $Res Function(_$_ReviewResponse) then) =
      __$$_ReviewResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<Review> reviews, int totalPages, int totalResults});
}

/// @nodoc
class __$$_ReviewResponseCopyWithImpl<$Res>
    extends _$ReviewResponseCopyWithImpl<$Res, _$_ReviewResponse>
    implements _$$_ReviewResponseCopyWith<$Res> {
  __$$_ReviewResponseCopyWithImpl(
      _$_ReviewResponse _value, $Res Function(_$_ReviewResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? reviews = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_ReviewResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
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
class _$_ReviewResponse extends _ReviewResponse {
  const _$_ReviewResponse(
      {this.page = 1,
      required final List<Review> reviews,
      required this.totalPages,
      required this.totalResults})
      : _reviews = reviews,
        super._();

  factory _$_ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewResponseFromJson(json);

  @override
  @JsonKey()
  final int page;
  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final int totalPages;
  @override
  final int totalResults;

  @override
  String toString() {
    return 'ReviewResponse(page: $page, reviews: $reviews, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewResponse &&
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
  _$$_ReviewResponseCopyWith<_$_ReviewResponse> get copyWith =>
      __$$_ReviewResponseCopyWithImpl<_$_ReviewResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewResponseToJson(
      this,
    );
  }
}

abstract class _ReviewResponse extends ReviewResponse {
  const factory _ReviewResponse(
      {final int page,
      required final List<Review> reviews,
      required final int totalPages,
      required final int totalResults}) = _$_ReviewResponse;
  const _ReviewResponse._() : super._();

  factory _ReviewResponse.fromJson(Map<String, dynamic> json) =
      _$_ReviewResponse.fromJson;

  @override
  int get page;
  @override
  List<Review> get reviews;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewResponseCopyWith<_$_ReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
