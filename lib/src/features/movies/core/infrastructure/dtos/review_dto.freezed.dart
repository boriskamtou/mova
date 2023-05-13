// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDTO _$ReviewDTOFromJson(Map<String, dynamic> json) {
  return _ReviewDTO.fromJson(json);
}

/// @nodoc
mixin _$ReviewDTO {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_details')
  AuthorReviewDTO get authorReviewDTO => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDTOCopyWith<ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDTOCopyWith<$Res> {
  factory $ReviewDTOCopyWith(ReviewDTO value, $Res Function(ReviewDTO) then) =
      _$ReviewDTOCopyWithImpl<$Res, ReviewDTO>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'author_details') AuthorReviewDTO authorReviewDTO,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') String createdAt,
      String? url});

  $AuthorReviewDTOCopyWith<$Res> get authorReviewDTO;
}

/// @nodoc
class _$ReviewDTOCopyWithImpl<$Res, $Val extends ReviewDTO>
    implements $ReviewDTOCopyWith<$Res> {
  _$ReviewDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorReviewDTO = null,
    Object? content = null,
    Object? createdAt = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorReviewDTO: null == authorReviewDTO
          ? _value.authorReviewDTO
          : authorReviewDTO // ignore: cast_nullable_to_non_nullable
              as AuthorReviewDTO,
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
  $AuthorReviewDTOCopyWith<$Res> get authorReviewDTO {
    return $AuthorReviewDTOCopyWith<$Res>(_value.authorReviewDTO, (value) {
      return _then(_value.copyWith(authorReviewDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewDTOCopyWith<$Res> implements $ReviewDTOCopyWith<$Res> {
  factory _$$_ReviewDTOCopyWith(
          _$_ReviewDTO value, $Res Function(_$_ReviewDTO) then) =
      __$$_ReviewDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'author_details') AuthorReviewDTO authorReviewDTO,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') String createdAt,
      String? url});

  @override
  $AuthorReviewDTOCopyWith<$Res> get authorReviewDTO;
}

/// @nodoc
class __$$_ReviewDTOCopyWithImpl<$Res>
    extends _$ReviewDTOCopyWithImpl<$Res, _$_ReviewDTO>
    implements _$$_ReviewDTOCopyWith<$Res> {
  __$$_ReviewDTOCopyWithImpl(
      _$_ReviewDTO _value, $Res Function(_$_ReviewDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorReviewDTO = null,
    Object? content = null,
    Object? createdAt = null,
    Object? url = freezed,
  }) {
    return _then(_$_ReviewDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorReviewDTO: null == authorReviewDTO
          ? _value.authorReviewDTO
          : authorReviewDTO // ignore: cast_nullable_to_non_nullable
              as AuthorReviewDTO,
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
@JsonSerializable()
class _$_ReviewDTO extends _ReviewDTO {
  const _$_ReviewDTO(
      {required this.id,
      @JsonKey(name: 'author_details') required this.authorReviewDTO,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.url})
      : super._();

  factory _$_ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDTOFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'author_details')
  final AuthorReviewDTO authorReviewDTO;
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
    return 'ReviewDTO(id: $id, authorReviewDTO: $authorReviewDTO, content: $content, createdAt: $createdAt, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorReviewDTO, authorReviewDTO) ||
                other.authorReviewDTO == authorReviewDTO) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, authorReviewDTO, content, createdAt, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewDTOCopyWith<_$_ReviewDTO> get copyWith =>
      __$$_ReviewDTOCopyWithImpl<_$_ReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDTOToJson(
      this,
    );
  }
}

abstract class _ReviewDTO extends ReviewDTO {
  const factory _ReviewDTO(
      {required final String id,
      @JsonKey(name: 'author_details')
          required final AuthorReviewDTO authorReviewDTO,
      @JsonKey(name: 'content')
          required final String content,
      @JsonKey(name: 'created_at')
          required final String createdAt,
      final String? url}) = _$_ReviewDTO;
  const _ReviewDTO._() : super._();

  factory _ReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewDTO.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'author_details')
  AuthorReviewDTO get authorReviewDTO;
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
  _$$_ReviewDTOCopyWith<_$_ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
