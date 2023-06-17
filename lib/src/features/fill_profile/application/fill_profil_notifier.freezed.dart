// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fill_profil_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FillProfileState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loading,
    required TResult Function(String? message) failure,
    required TResult Function(T? data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loading,
    TResult? Function(String? message)? failure,
    TResult? Function(T? data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loading,
    TResult Function(String? message)? failure,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) intial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? intial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Failure<T> value)? failure,
    TResult? Function(_Success<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? intial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillProfileStateCopyWith<T, $Res> {
  factory $FillProfileStateCopyWith(
          FillProfileState<T> value, $Res Function(FillProfileState<T>) then) =
      _$FillProfileStateCopyWithImpl<T, $Res, FillProfileState<T>>;
}

/// @nodoc
class _$FillProfileStateCopyWithImpl<T, $Res, $Val extends FillProfileState<T>>
    implements $FillProfileStateCopyWith<T, $Res> {
  _$FillProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T> value, $Res Function(_$_Initial<T>) then) =
      __$$_InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T, $Res>
    extends _$FillProfileStateCopyWithImpl<T, $Res, _$_Initial<T>>
    implements _$$_InitialCopyWith<T, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T> _value, $Res Function(_$_Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial<T> extends _Initial<T> {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'FillProfileState<$T>.intial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loading,
    required TResult Function(String? message) failure,
    required TResult Function(T? data) success,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loading,
    TResult? Function(String? message)? failure,
    TResult? Function(T? data)? success,
  }) {
    return intial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loading,
    TResult Function(String? message)? failure,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) intial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? intial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Failure<T> value)? failure,
    TResult? Function(_Success<T> value)? success,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? intial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> extends FillProfileState<T> {
  const factory _Initial() = _$_Initial<T>;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T> value, $Res Function(_$_Loading<T>) then) =
      __$$_LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, $Res>
    extends _$FillProfileStateCopyWithImpl<T, $Res, _$_Loading<T>>
    implements _$$_LoadingCopyWith<T, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T> _value, $Res Function(_$_Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading<T> extends _Loading<T> {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'FillProfileState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loading,
    required TResult Function(String? message) failure,
    required TResult Function(T? data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loading,
    TResult? Function(String? message)? failure,
    TResult? Function(T? data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loading,
    TResult Function(String? message)? failure,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) intial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? intial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Failure<T> value)? failure,
    TResult? Function(_Success<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? intial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> extends FillProfileState<T> {
  const factory _Loading() = _$_Loading<T>;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_FailureCopyWith<T, $Res> {
  factory _$$_FailureCopyWith(
          _$_Failure<T> value, $Res Function(_$_Failure<T>) then) =
      __$$_FailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<T, $Res>
    extends _$FillProfileStateCopyWithImpl<T, $Res, _$_Failure<T>>
    implements _$$_FailureCopyWith<T, $Res> {
  __$$_FailureCopyWithImpl(
      _$_Failure<T> _value, $Res Function(_$_Failure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failure<T>(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure<T> extends _Failure<T> {
  const _$_Failure([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'FillProfileState<$T>.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<T, _$_Failure<T>> get copyWith =>
      __$$_FailureCopyWithImpl<T, _$_Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loading,
    required TResult Function(String? message) failure,
    required TResult Function(T? data) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loading,
    TResult? Function(String? message)? failure,
    TResult? Function(T? data)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loading,
    TResult Function(String? message)? failure,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) intial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? intial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Failure<T> value)? failure,
    TResult? Function(_Success<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? intial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> extends FillProfileState<T> {
  const factory _Failure([final String? message]) = _$_Failure<T>;
  const _Failure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<T, _$_Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<T, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<T> value, $Res Function(_$_Success<T>) then) =
      __$$_SuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<T, $Res>
    extends _$FillProfileStateCopyWithImpl<T, $Res, _$_Success<T>>
    implements _$$_SuccessCopyWith<T, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<T> _value, $Res Function(_$_Success<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Success<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Success<T> extends _Success<T> {
  const _$_Success([this.data]) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'FillProfileState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<T, _$_Success<T>> get copyWith =>
      __$$_SuccessCopyWithImpl<T, _$_Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loading,
    required TResult Function(String? message) failure,
    required TResult Function(T? data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loading,
    TResult? Function(String? message)? failure,
    TResult? Function(T? data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loading,
    TResult Function(String? message)? failure,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) intial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? intial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Failure<T> value)? failure,
    TResult? Function(_Success<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? intial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> extends FillProfileState<T> {
  const factory _Success([final T? data]) = _$_Success<T>;
  const _Success._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<T, _$_Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
