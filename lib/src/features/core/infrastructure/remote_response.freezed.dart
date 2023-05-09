// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteResponse<T> {
  int get maxPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnexion,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnexion,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnexion,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnexion<T> value) noConnexion,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnexion<T> value)? noConnexion,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnexion<T> value)? noConnexion,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteResponseCopyWith<T, RemoteResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteResponseCopyWith<T, $Res> {
  factory $RemoteResponseCopyWith(
          RemoteResponse<T> value, $Res Function(RemoteResponse<T>) then) =
      _$RemoteResponseCopyWithImpl<T, $Res, RemoteResponse<T>>;
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class _$RemoteResponseCopyWithImpl<T, $Res, $Val extends RemoteResponse<T>>
    implements $RemoteResponseCopyWith<T, $Res> {
  _$RemoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_value.copyWith(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoConnexionCopyWith<T, $Res>
    implements $RemoteResponseCopyWith<T, $Res> {
  factory _$$_NoConnexionCopyWith(
          _$_NoConnexion<T> value, $Res Function(_$_NoConnexion<T>) then) =
      __$$_NoConnexionCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class __$$_NoConnexionCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_NoConnexion<T>>
    implements _$$_NoConnexionCopyWith<T, $Res> {
  __$$_NoConnexionCopyWithImpl(
      _$_NoConnexion<T> _value, $Res Function(_$_NoConnexion<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_$_NoConnexion<T>(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NoConnexion<T> extends _NoConnexion<T> {
  const _$_NoConnexion({required this.maxPage}) : super._();

  @override
  final int maxPage;

  @override
  String toString() {
    return 'RemoteResponse<$T>.noConnexion(maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoConnexion<T> &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoConnexionCopyWith<T, _$_NoConnexion<T>> get copyWith =>
      __$$_NoConnexionCopyWithImpl<T, _$_NoConnexion<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnexion,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) {
    return noConnexion(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnexion,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) {
    return noConnexion?.call(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnexion,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnexion != null) {
      return noConnexion(maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnexion<T> value) noConnexion,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return noConnexion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnexion<T> value)? noConnexion,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return noConnexion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnexion<T> value)? noConnexion,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnexion != null) {
      return noConnexion(this);
    }
    return orElse();
  }
}

abstract class _NoConnexion<T> extends RemoteResponse<T> {
  const factory _NoConnexion({required final int maxPage}) = _$_NoConnexion<T>;
  const _NoConnexion._() : super._();

  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$_NoConnexionCopyWith<T, _$_NoConnexion<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotModifiedCopyWith<T, $Res>
    implements $RemoteResponseCopyWith<T, $Res> {
  factory _$$_NotModifiedCopyWith(
          _$_NotModified<T> value, $Res Function(_$_NotModified<T>) then) =
      __$$_NotModifiedCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class __$$_NotModifiedCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_NotModified<T>>
    implements _$$_NotModifiedCopyWith<T, $Res> {
  __$$_NotModifiedCopyWithImpl(
      _$_NotModified<T> _value, $Res Function(_$_NotModified<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_$_NotModified<T>(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NotModified<T> extends _NotModified<T> {
  const _$_NotModified({required this.maxPage}) : super._();

  @override
  final int maxPage;

  @override
  String toString() {
    return 'RemoteResponse<$T>.notModified(maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotModified<T> &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotModifiedCopyWith<T, _$_NotModified<T>> get copyWith =>
      __$$_NotModifiedCopyWithImpl<T, _$_NotModified<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnexion,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) {
    return notModified(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnexion,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) {
    return notModified?.call(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnexion,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnexion<T> value) noConnexion,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return notModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnexion<T> value)? noConnexion,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return notModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnexion<T> value)? noConnexion,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(this);
    }
    return orElse();
  }
}

abstract class _NotModified<T> extends RemoteResponse<T> {
  const factory _NotModified({required final int maxPage}) = _$_NotModified<T>;
  const _NotModified._() : super._();

  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$_NotModifiedCopyWith<T, _$_NotModified<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WithNewDataCopyWith<T, $Res>
    implements $RemoteResponseCopyWith<T, $Res> {
  factory _$$_WithNewDataCopyWith(
          _$_WithNewData<T> value, $Res Function(_$_WithNewData<T>) then) =
      __$$_WithNewDataCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, int maxPage});
}

/// @nodoc
class __$$_WithNewDataCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_WithNewData<T>>
    implements _$$_WithNewDataCopyWith<T, $Res> {
  __$$_WithNewDataCopyWithImpl(
      _$_WithNewData<T> _value, $Res Function(_$_WithNewData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? maxPage = null,
  }) {
    return _then(_$_WithNewData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WithNewData<T> extends _WithNewData<T> {
  const _$_WithNewData(this.data, {required this.maxPage}) : super._();

  @override
  final T data;
  @override
  final int maxPage;

  @override
  String toString() {
    return 'RemoteResponse<$T>.withNewData(data: $data, maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithNewData<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithNewDataCopyWith<T, _$_WithNewData<T>> get copyWith =>
      __$$_WithNewDataCopyWithImpl<T, _$_WithNewData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnexion,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) {
    return withNewData(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnexion,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) {
    return withNewData?.call(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnexion,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(data, maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnexion<T> value) noConnexion,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return withNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnexion<T> value)? noConnexion,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return withNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnexion<T> value)? noConnexion,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(this);
    }
    return orElse();
  }
}

abstract class _WithNewData<T> extends RemoteResponse<T> {
  const factory _WithNewData(final T data, {required final int maxPage}) =
      _$_WithNewData<T>;
  const _WithNewData._() : super._();

  T get data;
  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$_WithNewDataCopyWith<T, _$_WithNewData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
