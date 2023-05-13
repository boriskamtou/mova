// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorReviewDTO _$AuthorReviewDTOFromJson(Map<String, dynamic> json) {
  return _AuthorReviewDTO.fromJson(json);
}

/// @nodoc
mixin _$AuthorReviewDTO {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avartar_path')
  String? get avatarPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorReviewDTOCopyWith<AuthorReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorReviewDTOCopyWith<$Res> {
  factory $AuthorReviewDTOCopyWith(
          AuthorReviewDTO value, $Res Function(AuthorReviewDTO) then) =
      _$AuthorReviewDTOCopyWithImpl<$Res, AuthorReviewDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'avartar_path') String? avatarPath,
      @JsonKey(name: 'rating') double? rating});
}

/// @nodoc
class _$AuthorReviewDTOCopyWithImpl<$Res, $Val extends AuthorReviewDTO>
    implements $AuthorReviewDTOCopyWith<$Res> {
  _$AuthorReviewDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_AuthorReviewDTOCopyWith<$Res>
    implements $AuthorReviewDTOCopyWith<$Res> {
  factory _$$_AuthorReviewDTOCopyWith(
          _$_AuthorReviewDTO value, $Res Function(_$_AuthorReviewDTO) then) =
      __$$_AuthorReviewDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'avartar_path') String? avatarPath,
      @JsonKey(name: 'rating') double? rating});
}

/// @nodoc
class __$$_AuthorReviewDTOCopyWithImpl<$Res>
    extends _$AuthorReviewDTOCopyWithImpl<$Res, _$_AuthorReviewDTO>
    implements _$$_AuthorReviewDTOCopyWith<$Res> {
  __$$_AuthorReviewDTOCopyWithImpl(
      _$_AuthorReviewDTO _value, $Res Function(_$_AuthorReviewDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? userName = freezed,
    Object? avatarPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_AuthorReviewDTO(
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
class _$_AuthorReviewDTO extends _AuthorReviewDTO {
  const _$_AuthorReviewDTO(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'username') this.userName = '',
      @JsonKey(name: 'avartar_path') this.avatarPath = '',
      @JsonKey(name: 'rating') this.rating = 0.0})
      : super._();

  factory _$_AuthorReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorReviewDTOFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? userName;
  @override
  @JsonKey(name: 'avartar_path')
  final String? avatarPath;
  @override
  @JsonKey(name: 'rating')
  final double? rating;

  @override
  String toString() {
    return 'AuthorReviewDTO(name: $name, userName: $userName, avatarPath: $avatarPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorReviewDTO &&
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
  _$$_AuthorReviewDTOCopyWith<_$_AuthorReviewDTO> get copyWith =>
      __$$_AuthorReviewDTOCopyWithImpl<_$_AuthorReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorReviewDTOToJson(
      this,
    );
  }
}

abstract class _AuthorReviewDTO extends AuthorReviewDTO {
  const factory _AuthorReviewDTO(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? userName,
      @JsonKey(name: 'avartar_path') final String? avatarPath,
      @JsonKey(name: 'rating') final double? rating}) = _$_AuthorReviewDTO;
  const _AuthorReviewDTO._() : super._();

  factory _AuthorReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_AuthorReviewDTO.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get userName;
  @override
  @JsonKey(name: 'avartar_path')
  String? get avatarPath;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorReviewDTOCopyWith<_$_AuthorReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
