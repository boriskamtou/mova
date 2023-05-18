// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreDTO _$GenreDTOFromJson(Map<String, dynamic> json) {
  return _GenreDTO.fromJson(json);
}

/// @nodoc
mixin _$GenreDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreDTOCopyWith<GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDTOCopyWith<$Res> {
  factory $GenreDTOCopyWith(GenreDTO value, $Res Function(GenreDTO) then) =
      _$GenreDTOCopyWithImpl<$Res, GenreDTO>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreDTOCopyWithImpl<$Res, $Val extends GenreDTO>
    implements $GenreDTOCopyWith<$Res> {
  _$GenreDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreDTOCopyWith<$Res> implements $GenreDTOCopyWith<$Res> {
  factory _$$_GenreDTOCopyWith(
          _$_GenreDTO value, $Res Function(_$_GenreDTO) then) =
      __$$_GenreDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GenreDTOCopyWithImpl<$Res>
    extends _$GenreDTOCopyWithImpl<$Res, _$_GenreDTO>
    implements _$$_GenreDTOCopyWith<$Res> {
  __$$_GenreDTOCopyWithImpl(
      _$_GenreDTO _value, $Res Function(_$_GenreDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_GenreDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreDTO extends _GenreDTO {
  const _$_GenreDTO({required this.id, required this.name}) : super._();

  factory _$_GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GenreDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenreDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreDTOCopyWith<_$_GenreDTO> get copyWith =>
      __$$_GenreDTOCopyWithImpl<_$_GenreDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreDTOToJson(
      this,
    );
  }
}

abstract class _GenreDTO extends GenreDTO {
  const factory _GenreDTO({required final int id, required final String name}) =
      _$_GenreDTO;
  const _GenreDTO._() : super._();

  factory _GenreDTO.fromJson(Map<String, dynamic> json) = _$_GenreDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenreDTOCopyWith<_$_GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
