// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_details')
  AuthorReview get authorReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'author_details') AuthorReview authorReview,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') String createdAt,
      String? url});

  $AuthorReviewCopyWith<$Res> get authorReview;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorReview = null,
    Object? content = null,
    Object? createdAt = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorReview: null == authorReview
          ? _value.authorReview
          : authorReview // ignore: cast_nullable_to_non_nullable
              as AuthorReview,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorReviewCopyWith<$Res> get authorReview {
    return $AuthorReviewCopyWith<$Res>(_value.authorReview, (value) {
      return _then(_value.copyWith(authorReview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'author_details') AuthorReview authorReview,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') String createdAt,
      String? url});

  @override
  $AuthorReviewCopyWith<$Res> get authorReview;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorReview = null,
    Object? content = null,
    Object? createdAt = null,
    Object? url = freezed,
  }) {
    return _then(_$_Review(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorReview: null == authorReview
          ? _value.authorReview
          : authorReview // ignore: cast_nullable_to_non_nullable
              as AuthorReview,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Review extends _Review {
  const _$_Review(
      {required this.id,
      @JsonKey(name: 'author_details') required this.authorReview,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.url})
      : super._();

  @override
  final String id;
  @override
  @JsonKey(name: 'author_details')
  final AuthorReview authorReview;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String? url;

  @override
  String toString() {
    return 'Review(id: $id, authorReview: $authorReview, content: $content, createdAt: $createdAt, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorReview, authorReview) ||
                other.authorReview == authorReview) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, authorReview, content, createdAt, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);
}

abstract class _Review extends Review {
  const factory _Review(
      {required final String id,
      @JsonKey(name: 'author_details') required final AuthorReview authorReview,
      @JsonKey(name: 'content') required final String content,
      @JsonKey(name: 'created_at') required final String createdAt,
      final String? url}) = _$_Review;
  const _Review._() : super._();

  @override
  String get id;
  @override
  @JsonKey(name: 'author_details')
  AuthorReview get authorReview;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
