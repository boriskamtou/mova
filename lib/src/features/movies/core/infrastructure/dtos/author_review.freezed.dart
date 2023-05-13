// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorReview _$AuthorReviewFromJson(Map<String, dynamic> json) {
  return _AuthorReview.fromJson(json);
}

/// @nodoc
mixin _$AuthorReview {
  String? get name => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get avatarPath => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorReviewCopyWith<AuthorReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorReviewCopyWith<$Res> {
  factory $AuthorReviewCopyWith(
          AuthorReview value, $Res Function(AuthorReview) then) =
      _$AuthorReviewCopyWithImpl<$Res, AuthorReview>;
  @useResult
  $Res call(
      {String? name, String? userName, String? avatarPath, double? rating});
}

/// @nodoc
class _$AuthorReviewCopyWithImpl<$Res, $Val extends AuthorReview>
    implements $AuthorReviewCopyWith<$Res> {
  _$AuthorReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userName = freezed,
    Object? avatarPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorReviewCopyWith<$Res>
    implements $AuthorReviewCopyWith<$Res> {
  factory _$$_AuthorReviewCopyWith(
          _$_AuthorReview value, $Res Function(_$_AuthorReview) then) =
      __$$_AuthorReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? userName, String? avatarPath, double? rating});
}

/// @nodoc
class __$$_AuthorReviewCopyWithImpl<$Res>
    extends _$AuthorReviewCopyWithImpl<$Res, _$_AuthorReview>
    implements _$$_AuthorReviewCopyWith<$Res> {
  __$$_AuthorReviewCopyWithImpl(
      _$_AuthorReview _value, $Res Function(_$_AuthorReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userName = freezed,
    Object? avatarPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_AuthorReview(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorReview extends _AuthorReview {
  const _$_AuthorReview(
      {this.name, this.userName, this.avatarPath, this.rating})
      : super._();

  factory _$_AuthorReview.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorReviewFromJson(json);

  @override
  final String? name;
  @override
  final String? userName;
  @override
  final String? avatarPath;
  @override
  final double? rating;

  @override
  String toString() {
    return 'AuthorReview(name: $name, userName: $userName, avatarPath: $avatarPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorReview &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, userName, avatarPath, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorReviewCopyWith<_$_AuthorReview> get copyWith =>
      __$$_AuthorReviewCopyWithImpl<_$_AuthorReview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorReviewToJson(
      this,
    );
  }
}

abstract class _AuthorReview extends AuthorReview {
  const factory _AuthorReview(
      {final String? name,
      final String? userName,
      final String? avatarPath,
      final double? rating}) = _$_AuthorReview;
  const _AuthorReview._() : super._();

  factory _AuthorReview.fromJson(Map<String, dynamic> json) =
      _$_AuthorReview.fromJson;

  @override
  String? get name;
  @override
  String? get userName;
  @override
  String? get avatarPath;
  @override
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorReviewCopyWith<_$_AuthorReview> get copyWith =>
      throw _privateConstructorUsedError;
}
