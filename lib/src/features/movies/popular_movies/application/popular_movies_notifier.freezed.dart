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
  Fresh<List<Movie>> get movies => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Movie>> movies) initial,
    required TResult Function(Fresh<List<Movie>> movies, int itemPerPage)
        loading,
    required TResult Function(
            Fresh<List<Movie>> movies, bool isNextPageAvailable)
        loaded,
    required TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Movie>> movies)? initial,
    TResult? Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult? Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult? Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Movie>> movies)? initial,
    TResult Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularMoviesStateCopyWith<PopularMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesStateCopyWith<$Res> {
  factory $PopularMoviesStateCopyWith(
          PopularMoviesState value, $Res Function(PopularMoviesState) then) =
      _$PopularMoviesStateCopyWithImpl<$Res, PopularMoviesState>;
  @useResult
  $Res call({Fresh<List<Movie>> movies});

  $FreshCopyWith<List<Movie>, $Res> get movies;
}

/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res, $Val extends PopularMoviesState>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Movie>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<Movie>, $Res> get movies {
    return $FreshCopyWith<List<Movie>, $Res>(_value.movies, (value) {
      return _then(_value.copyWith(movies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IntialCopyWith<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  factory _$$_IntialCopyWith(_$_Intial value, $Res Function(_$_Intial) then) =
      __$$_IntialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Movie>> movies});

  @override
  $FreshCopyWith<List<Movie>, $Res> get movies;
}

/// @nodoc
class __$$_IntialCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Intial>
    implements _$$_IntialCopyWith<$Res> {
  __$$_IntialCopyWithImpl(_$_Intial _value, $Res Function(_$_Intial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$_Intial(
      null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Movie>>,
    ));
  }
}

/// @nodoc

class _$_Intial extends _Intial {
  const _$_Intial(this.movies) : super._();

  @override
  final Fresh<List<Movie>> movies;

  @override
  String toString() {
    return 'PopularMoviesState.initial(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Intial &&
            (identical(other.movies, movies) || other.movies == movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntialCopyWith<_$_Intial> get copyWith =>
      __$$_IntialCopyWithImpl<_$_Intial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Movie>> movies) initial,
    required TResult Function(Fresh<List<Movie>> movies, int itemPerPage)
        loading,
    required TResult Function(
            Fresh<List<Movie>> movies, bool isNextPageAvailable)
        loaded,
    required TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)
        failure,
  }) {
    return initial(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Movie>> movies)? initial,
    TResult? Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult? Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult? Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
  }) {
    return initial?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Movie>> movies)? initial,
    TResult Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Intial extends PopularMoviesState {
  const factory _Intial(final Fresh<List<Movie>> movies) = _$_Intial;
  const _Intial._() : super._();

  @override
  Fresh<List<Movie>> get movies;
  @override
  @JsonKey(ignore: true)
  _$$_IntialCopyWith<_$_Intial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Movie>> movies, int itemPerPage});

  @override
  $FreshCopyWith<List<Movie>, $Res> get movies;
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
    Object? movies = null,
    Object? itemPerPage = null,
  }) {
    return _then(_$_Loading(
      null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Movie>>,
      null == itemPerPage
          ? _value.itemPerPage
          : itemPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(this.movies, this.itemPerPage) : super._();

  @override
  final Fresh<List<Movie>> movies;
  @override
  final int itemPerPage;

  @override
  String toString() {
    return 'PopularMoviesState.loading(movies: $movies, itemPerPage: $itemPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.movies, movies) || other.movies == movies) &&
            (identical(other.itemPerPage, itemPerPage) ||
                other.itemPerPage == itemPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies, itemPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Movie>> movies) initial,
    required TResult Function(Fresh<List<Movie>> movies, int itemPerPage)
        loading,
    required TResult Function(
            Fresh<List<Movie>> movies, bool isNextPageAvailable)
        loaded,
    required TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)
        failure,
  }) {
    return loading(movies, itemPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Movie>> movies)? initial,
    TResult? Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult? Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult? Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
  }) {
    return loading?.call(movies, itemPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Movie>> movies)? initial,
    TResult Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(movies, itemPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PopularMoviesState {
  const factory _Loading(
      final Fresh<List<Movie>> movies, final int itemPerPage) = _$_Loading;
  const _Loading._() : super._();

  @override
  Fresh<List<Movie>> get movies;
  int get itemPerPage;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Movie>> movies, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<Movie>, $Res> get movies;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$_Loaded(
      null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Movie>>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded(this.movies, {required this.isNextPageAvailable}) : super._();

  @override
  final Fresh<List<Movie>> movies;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PopularMoviesState.loaded(movies: $movies, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.movies, movies) || other.movies == movies) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies, isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Movie>> movies) initial,
    required TResult Function(Fresh<List<Movie>> movies, int itemPerPage)
        loading,
    required TResult Function(
            Fresh<List<Movie>> movies, bool isNextPageAvailable)
        loaded,
    required TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)
        failure,
  }) {
    return loaded(movies, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Movie>> movies)? initial,
    TResult? Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult? Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult? Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
  }) {
    return loaded?.call(movies, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Movie>> movies)? initial,
    TResult Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends PopularMoviesState {
  const factory _Loaded(final Fresh<List<Movie>> movies,
      {required final bool isNextPageAvailable}) = _$_Loaded;
  const _Loaded._() : super._();

  @override
  Fresh<List<Movie>> get movies;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Movie>> movies, MovieFailure failure});

  @override
  $FreshCopyWith<List<Movie>, $Res> get movies;
  $MovieFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Movie>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MovieFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieFailureCopyWith<$Res> get failure {
    return $MovieFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.movies, this.failure) : super._();

  @override
  final Fresh<List<Movie>> movies;
  @override
  final MovieFailure failure;

  @override
  String toString() {
    return 'PopularMoviesState.failure(movies: $movies, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.movies, movies) || other.movies == movies) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Movie>> movies) initial,
    required TResult Function(Fresh<List<Movie>> movies, int itemPerPage)
        loading,
    required TResult Function(
            Fresh<List<Movie>> movies, bool isNextPageAvailable)
        loaded,
    required TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)
        failure,
  }) {
    return failure(movies, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Movie>> movies)? initial,
    TResult? Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult? Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult? Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
  }) {
    return failure?.call(movies, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Movie>> movies)? initial,
    TResult Function(Fresh<List<Movie>> movies, int itemPerPage)? loading,
    TResult Function(Fresh<List<Movie>> movies, bool isNextPageAvailable)?
        loaded,
    TResult Function(Fresh<List<Movie>> movies, MovieFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(movies, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends PopularMoviesState {
  const factory _Failure(
      final Fresh<List<Movie>> movies, final MovieFailure failure) = _$_Failure;
  const _Failure._() : super._();

  @override
  Fresh<List<Movie>> get movies;
  MovieFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
