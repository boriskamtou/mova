// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopularMoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<MovieResponse?> movieResponse) initial,
    required TResult Function(Fresh<MovieResponse> moviesResponse)
        loadInProgress,
    required TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)
        loadedSuccess,
    required TResult Function(
            Fresh<MovieResponse> movieResponse, Exception exception)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult? Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult? Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult? Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loadInProgress,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loadInProgress,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loadInProgress,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesStateCopyWith<$Res> {
  factory $PopularMoviesStateCopyWith(
          PopularMoviesState value, $Res Function(PopularMoviesState) then) =
      _$PopularMoviesStateCopyWithImpl<$Res, PopularMoviesState>;
}

/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res, $Val extends PopularMoviesState>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Fresh<MovieResponse?> movieResponse});

  $FreshCopyWith<MovieResponse?, $Res> get movieResponse;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieResponse = null,
  }) {
    return _then(_$_Initial(
      null == movieResponse
          ? _value.movieResponse
          : movieResponse // ignore: cast_nullable_to_non_nullable
              as Fresh<MovieResponse?>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<MovieResponse?, $Res> get movieResponse {
    return $FreshCopyWith<MovieResponse?, $Res>(_value.movieResponse, (value) {
      return _then(_value.copyWith(movieResponse: value));
    });
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.movieResponse) : super._();

  @override
  final Fresh<MovieResponse?> movieResponse;

  @override
  String toString() {
    return 'PopularMoviesState.initial(movieResponse: $movieResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.movieResponse, movieResponse) ||
                other.movieResponse == movieResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<MovieResponse?> movieResponse) initial,
    required TResult Function(Fresh<MovieResponse> moviesResponse)
        loadInProgress,
    required TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)
        loadedSuccess,
    required TResult Function(
            Fresh<MovieResponse> movieResponse, Exception exception)
        failure,
  }) {
    return initial(movieResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult? Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult? Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult? Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
  }) {
    return initial?.call(movieResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(movieResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loadInProgress,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loadInProgress,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loadInProgress,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PopularMoviesState {
  const factory _Initial(final Fresh<MovieResponse?> movieResponse) =
      _$_Initial;
  const _Initial._() : super._();

  Fresh<MovieResponse?> get movieResponse;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({Fresh<MovieResponse> moviesResponse});

  $FreshCopyWith<MovieResponse, $Res> get moviesResponse;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesResponse = null,
  }) {
    return _then(_$_Loading(
      null == moviesResponse
          ? _value.moviesResponse
          : moviesResponse // ignore: cast_nullable_to_non_nullable
              as Fresh<MovieResponse>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<MovieResponse, $Res> get moviesResponse {
    return $FreshCopyWith<MovieResponse, $Res>(_value.moviesResponse, (value) {
      return _then(_value.copyWith(moviesResponse: value));
    });
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(this.moviesResponse) : super._();

  @override
  final Fresh<MovieResponse> moviesResponse;

  @override
  String toString() {
    return 'PopularMoviesState.loadInProgress(moviesResponse: $moviesResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.moviesResponse, moviesResponse) ||
                other.moviesResponse == moviesResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviesResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<MovieResponse?> movieResponse) initial,
    required TResult Function(Fresh<MovieResponse> moviesResponse)
        loadInProgress,
    required TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)
        loadedSuccess,
    required TResult Function(
            Fresh<MovieResponse> movieResponse, Exception exception)
        failure,
  }) {
    return loadInProgress(moviesResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult? Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult? Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult? Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
  }) {
    return loadInProgress?.call(moviesResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(moviesResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loadInProgress,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadFailure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loadInProgress,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadFailure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loadInProgress,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PopularMoviesState {
  const factory _Loading(final Fresh<MovieResponse> moviesResponse) =
      _$_Loading;
  const _Loading._() : super._();

  Fresh<MovieResponse> get moviesResponse;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedSuccessCopyWith<$Res> {
  factory _$$_LoadedSuccessCopyWith(
          _$_LoadedSuccess value, $Res Function(_$_LoadedSuccess) then) =
      __$$_LoadedSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable});

  $FreshCopyWith<MovieResponse, $Res> get moviesResponse;
}

/// @nodoc
class __$$_LoadedSuccessCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_LoadedSuccess>
    implements _$$_LoadedSuccessCopyWith<$Res> {
  __$$_LoadedSuccessCopyWithImpl(
      _$_LoadedSuccess _value, $Res Function(_$_LoadedSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesResponse = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$_LoadedSuccess(
      null == moviesResponse
          ? _value.moviesResponse
          : moviesResponse // ignore: cast_nullable_to_non_nullable
              as Fresh<MovieResponse>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<MovieResponse, $Res> get moviesResponse {
    return $FreshCopyWith<MovieResponse, $Res>(_value.moviesResponse, (value) {
      return _then(_value.copyWith(moviesResponse: value));
    });
  }
}

/// @nodoc

class _$_LoadedSuccess extends _LoadedSuccess {
  const _$_LoadedSuccess(this.moviesResponse,
      {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<MovieResponse> moviesResponse;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PopularMoviesState.loadedSuccess(moviesResponse: $moviesResponse, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedSuccess &&
            (identical(other.moviesResponse, moviesResponse) ||
                other.moviesResponse == moviesResponse) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, moviesResponse, isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedSuccessCopyWith<_$_LoadedSuccess> get copyWith =>
      __$$_LoadedSuccessCopyWithImpl<_$_LoadedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<MovieResponse?> movieResponse) initial,
    required TResult Function(Fresh<MovieResponse> moviesResponse)
        loadInProgress,
    required TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)
        loadedSuccess,
    required TResult Function(
            Fresh<MovieResponse> movieResponse, Exception exception)
        failure,
  }) {
    return loadedSuccess(moviesResponse, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult? Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult? Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult? Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
  }) {
    return loadedSuccess?.call(moviesResponse, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(moviesResponse, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loadInProgress,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadFailure value) failure,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loadInProgress,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadFailure value)? failure,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loadInProgress,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadedSuccess extends PopularMoviesState {
  const factory _LoadedSuccess(final Fresh<MovieResponse> moviesResponse,
      {required final bool isNextPageAvailable}) = _$_LoadedSuccess;
  const _LoadedSuccess._() : super._();

  Fresh<MovieResponse> get moviesResponse;
  bool get isNextPageAvailable;
  @JsonKey(ignore: true)
  _$$_LoadedSuccessCopyWith<_$_LoadedSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Fresh<MovieResponse> movieResponse, Exception exception});

  $FreshCopyWith<MovieResponse, $Res> get movieResponse;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieResponse = null,
    Object? exception = null,
  }) {
    return _then(_$_LoadFailure(
      null == movieResponse
          ? _value.movieResponse
          : movieResponse // ignore: cast_nullable_to_non_nullable
              as Fresh<MovieResponse>,
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<MovieResponse, $Res> get movieResponse {
    return $FreshCopyWith<MovieResponse, $Res>(_value.movieResponse, (value) {
      return _then(_value.copyWith(movieResponse: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.movieResponse, this.exception) : super._();

  @override
  final Fresh<MovieResponse> movieResponse;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'PopularMoviesState.failure(movieResponse: $movieResponse, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.movieResponse, movieResponse) ||
                other.movieResponse == movieResponse) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieResponse, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<MovieResponse?> movieResponse) initial,
    required TResult Function(Fresh<MovieResponse> moviesResponse)
        loadInProgress,
    required TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)
        loadedSuccess,
    required TResult Function(
            Fresh<MovieResponse> movieResponse, Exception exception)
        failure,
  }) {
    return failure(movieResponse, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult? Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult? Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult? Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
  }) {
    return failure?.call(movieResponse, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<MovieResponse?> movieResponse)? initial,
    TResult Function(Fresh<MovieResponse> moviesResponse)? loadInProgress,
    TResult Function(
            Fresh<MovieResponse> moviesResponse, bool isNextPageAvailable)?
        loadedSuccess,
    TResult Function(Fresh<MovieResponse> movieResponse, Exception exception)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(movieResponse, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loadInProgress,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loadInProgress,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loadInProgress,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends PopularMoviesState {
  const factory _LoadFailure(
          final Fresh<MovieResponse> movieResponse, final Exception exception) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  Fresh<MovieResponse> get movieResponse;
  Exception get exception;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
