// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveLoading,
    required TResult Function(Movie movie) saveComplete,
    required TResult Function(String? message) saveFailed,
    required TResult Function() loading,
    required TResult Function(List<Movie> bookmarkMovies) loaded,
    required TResult Function(String? message) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveLoading,
    TResult? Function(Movie movie)? saveComplete,
    TResult? Function(String? message)? saveFailed,
    TResult? Function()? loading,
    TResult? Function(List<Movie> bookmarkMovies)? loaded,
    TResult? Function(String? message)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveLoading,
    TResult Function(Movie movie)? saveComplete,
    TResult Function(String? message)? saveFailed,
    TResult Function()? loading,
    TResult Function(List<Movie> bookmarkMovies)? loaded,
    TResult Function(String? message)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_SaveComplete value) saveComplete,
    required TResult Function(_SaveFailed value) saveFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveLoading value)? saveLoading,
    TResult? Function(_SaveComplete value)? saveComplete,
    TResult? Function(_SaveFailed value)? saveFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_SaveComplete value)? saveComplete,
    TResult Function(_SaveFailed value)? saveFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveLoadingCopyWith<$Res> {
  factory _$$_SaveLoadingCopyWith(
          _$_SaveLoading value, $Res Function(_$_SaveLoading) then) =
      __$$_SaveLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveLoadingCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_SaveLoading>
    implements _$$_SaveLoadingCopyWith<$Res> {
  __$$_SaveLoadingCopyWithImpl(
      _$_SaveLoading _value, $Res Function(_$_SaveLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveLoading extends _SaveLoading with DiagnosticableTreeMixin {
  const _$_SaveLoading() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkState.saveLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BookmarkState.saveLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveLoading,
    required TResult Function(Movie movie) saveComplete,
    required TResult Function(String? message) saveFailed,
    required TResult Function() loading,
    required TResult Function(List<Movie> bookmarkMovies) loaded,
    required TResult Function(String? message) loadedFailed,
  }) {
    return saveLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveLoading,
    TResult? Function(Movie movie)? saveComplete,
    TResult? Function(String? message)? saveFailed,
    TResult? Function()? loading,
    TResult? Function(List<Movie> bookmarkMovies)? loaded,
    TResult? Function(String? message)? loadedFailed,
  }) {
    return saveLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveLoading,
    TResult Function(Movie movie)? saveComplete,
    TResult Function(String? message)? saveFailed,
    TResult Function()? loading,
    TResult Function(List<Movie> bookmarkMovies)? loaded,
    TResult Function(String? message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (saveLoading != null) {
      return saveLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_SaveComplete value) saveComplete,
    required TResult Function(_SaveFailed value) saveFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return saveLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveLoading value)? saveLoading,
    TResult? Function(_SaveComplete value)? saveComplete,
    TResult? Function(_SaveFailed value)? saveFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return saveLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_SaveComplete value)? saveComplete,
    TResult Function(_SaveFailed value)? saveFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (saveLoading != null) {
      return saveLoading(this);
    }
    return orElse();
  }
}

abstract class _SaveLoading extends BookmarkState {
  const factory _SaveLoading() = _$_SaveLoading;
  const _SaveLoading._() : super._();
}

/// @nodoc
abstract class _$$_SaveCompleteCopyWith<$Res> {
  factory _$$_SaveCompleteCopyWith(
          _$_SaveComplete value, $Res Function(_$_SaveComplete) then) =
      __$$_SaveCompleteCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$_SaveCompleteCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_SaveComplete>
    implements _$$_SaveCompleteCopyWith<$Res> {
  __$$_SaveCompleteCopyWithImpl(
      _$_SaveComplete _value, $Res Function(_$_SaveComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$_SaveComplete(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$_SaveComplete extends _SaveComplete with DiagnosticableTreeMixin {
  const _$_SaveComplete(this.movie) : super._();

  @override
  final Movie movie;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkState.saveComplete(movie: $movie)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookmarkState.saveComplete'))
      ..add(DiagnosticsProperty('movie', movie));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveComplete &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveCompleteCopyWith<_$_SaveComplete> get copyWith =>
      __$$_SaveCompleteCopyWithImpl<_$_SaveComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveLoading,
    required TResult Function(Movie movie) saveComplete,
    required TResult Function(String? message) saveFailed,
    required TResult Function() loading,
    required TResult Function(List<Movie> bookmarkMovies) loaded,
    required TResult Function(String? message) loadedFailed,
  }) {
    return saveComplete(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveLoading,
    TResult? Function(Movie movie)? saveComplete,
    TResult? Function(String? message)? saveFailed,
    TResult? Function()? loading,
    TResult? Function(List<Movie> bookmarkMovies)? loaded,
    TResult? Function(String? message)? loadedFailed,
  }) {
    return saveComplete?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveLoading,
    TResult Function(Movie movie)? saveComplete,
    TResult Function(String? message)? saveFailed,
    TResult Function()? loading,
    TResult Function(List<Movie> bookmarkMovies)? loaded,
    TResult Function(String? message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (saveComplete != null) {
      return saveComplete(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_SaveComplete value) saveComplete,
    required TResult Function(_SaveFailed value) saveFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return saveComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveLoading value)? saveLoading,
    TResult? Function(_SaveComplete value)? saveComplete,
    TResult? Function(_SaveFailed value)? saveFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return saveComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_SaveComplete value)? saveComplete,
    TResult Function(_SaveFailed value)? saveFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (saveComplete != null) {
      return saveComplete(this);
    }
    return orElse();
  }
}

abstract class _SaveComplete extends BookmarkState {
  const factory _SaveComplete(final Movie movie) = _$_SaveComplete;
  const _SaveComplete._() : super._();

  Movie get movie;
  @JsonKey(ignore: true)
  _$$_SaveCompleteCopyWith<_$_SaveComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveFailedCopyWith<$Res> {
  factory _$$_SaveFailedCopyWith(
          _$_SaveFailed value, $Res Function(_$_SaveFailed) then) =
      __$$_SaveFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_SaveFailedCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_SaveFailed>
    implements _$$_SaveFailedCopyWith<$Res> {
  __$$_SaveFailedCopyWithImpl(
      _$_SaveFailed _value, $Res Function(_$_SaveFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SaveFailed(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SaveFailed extends _SaveFailed with DiagnosticableTreeMixin {
  const _$_SaveFailed([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkState.saveFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookmarkState.saveFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveFailedCopyWith<_$_SaveFailed> get copyWith =>
      __$$_SaveFailedCopyWithImpl<_$_SaveFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveLoading,
    required TResult Function(Movie movie) saveComplete,
    required TResult Function(String? message) saveFailed,
    required TResult Function() loading,
    required TResult Function(List<Movie> bookmarkMovies) loaded,
    required TResult Function(String? message) loadedFailed,
  }) {
    return saveFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveLoading,
    TResult? Function(Movie movie)? saveComplete,
    TResult? Function(String? message)? saveFailed,
    TResult? Function()? loading,
    TResult? Function(List<Movie> bookmarkMovies)? loaded,
    TResult? Function(String? message)? loadedFailed,
  }) {
    return saveFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveLoading,
    TResult Function(Movie movie)? saveComplete,
    TResult Function(String? message)? saveFailed,
    TResult Function()? loading,
    TResult Function(List<Movie> bookmarkMovies)? loaded,
    TResult Function(String? message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (saveFailed != null) {
      return saveFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_SaveComplete value) saveComplete,
    required TResult Function(_SaveFailed value) saveFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return saveFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveLoading value)? saveLoading,
    TResult? Function(_SaveComplete value)? saveComplete,
    TResult? Function(_SaveFailed value)? saveFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return saveFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_SaveComplete value)? saveComplete,
    TResult Function(_SaveFailed value)? saveFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (saveFailed != null) {
      return saveFailed(this);
    }
    return orElse();
  }
}

abstract class _SaveFailed extends BookmarkState {
  const factory _SaveFailed([final String? message]) = _$_SaveFailed;
  const _SaveFailed._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_SaveFailedCopyWith<_$_SaveFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading with DiagnosticableTreeMixin {
  const _$_Loading() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BookmarkState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveLoading,
    required TResult Function(Movie movie) saveComplete,
    required TResult Function(String? message) saveFailed,
    required TResult Function() loading,
    required TResult Function(List<Movie> bookmarkMovies) loaded,
    required TResult Function(String? message) loadedFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveLoading,
    TResult? Function(Movie movie)? saveComplete,
    TResult? Function(String? message)? saveFailed,
    TResult? Function()? loading,
    TResult? Function(List<Movie> bookmarkMovies)? loaded,
    TResult? Function(String? message)? loadedFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveLoading,
    TResult Function(Movie movie)? saveComplete,
    TResult Function(String? message)? saveFailed,
    TResult Function()? loading,
    TResult Function(List<Movie> bookmarkMovies)? loaded,
    TResult Function(String? message)? loadedFailed,
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
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_SaveComplete value) saveComplete,
    required TResult Function(_SaveFailed value) saveFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveLoading value)? saveLoading,
    TResult? Function(_SaveComplete value)? saveComplete,
    TResult? Function(_SaveFailed value)? saveFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_SaveComplete value)? saveComplete,
    TResult Function(_SaveFailed value)? saveFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends BookmarkState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> bookmarkMovies});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkMovies = null,
  }) {
    return _then(_$_Loaded(
      null == bookmarkMovies
          ? _value._bookmarkMovies
          : bookmarkMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded with DiagnosticableTreeMixin {
  const _$_Loaded(final List<Movie> bookmarkMovies)
      : _bookmarkMovies = bookmarkMovies,
        super._();

  final List<Movie> _bookmarkMovies;
  @override
  List<Movie> get bookmarkMovies {
    if (_bookmarkMovies is EqualUnmodifiableListView) return _bookmarkMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarkMovies);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkState.loaded(bookmarkMovies: $bookmarkMovies)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookmarkState.loaded'))
      ..add(DiagnosticsProperty('bookmarkMovies', bookmarkMovies));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._bookmarkMovies, _bookmarkMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookmarkMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveLoading,
    required TResult Function(Movie movie) saveComplete,
    required TResult Function(String? message) saveFailed,
    required TResult Function() loading,
    required TResult Function(List<Movie> bookmarkMovies) loaded,
    required TResult Function(String? message) loadedFailed,
  }) {
    return loaded(bookmarkMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveLoading,
    TResult? Function(Movie movie)? saveComplete,
    TResult? Function(String? message)? saveFailed,
    TResult? Function()? loading,
    TResult? Function(List<Movie> bookmarkMovies)? loaded,
    TResult? Function(String? message)? loadedFailed,
  }) {
    return loaded?.call(bookmarkMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveLoading,
    TResult Function(Movie movie)? saveComplete,
    TResult Function(String? message)? saveFailed,
    TResult Function()? loading,
    TResult Function(List<Movie> bookmarkMovies)? loaded,
    TResult Function(String? message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bookmarkMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_SaveComplete value) saveComplete,
    required TResult Function(_SaveFailed value) saveFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveLoading value)? saveLoading,
    TResult? Function(_SaveComplete value)? saveComplete,
    TResult? Function(_SaveFailed value)? saveFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_SaveComplete value)? saveComplete,
    TResult Function(_SaveFailed value)? saveFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends BookmarkState {
  const factory _Loaded(final List<Movie> bookmarkMovies) = _$_Loaded;
  const _Loaded._() : super._();

  List<Movie> get bookmarkMovies;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedFailedCopyWith<$Res> {
  factory _$$_LoadedFailedCopyWith(
          _$_LoadedFailed value, $Res Function(_$_LoadedFailed) then) =
      __$$_LoadedFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_LoadedFailedCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_LoadedFailed>
    implements _$$_LoadedFailedCopyWith<$Res> {
  __$$_LoadedFailedCopyWithImpl(
      _$_LoadedFailed _value, $Res Function(_$_LoadedFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LoadedFailed(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadedFailed extends _LoadedFailed with DiagnosticableTreeMixin {
  const _$_LoadedFailed([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkState.loadedFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookmarkState.loadedFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedFailedCopyWith<_$_LoadedFailed> get copyWith =>
      __$$_LoadedFailedCopyWithImpl<_$_LoadedFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveLoading,
    required TResult Function(Movie movie) saveComplete,
    required TResult Function(String? message) saveFailed,
    required TResult Function() loading,
    required TResult Function(List<Movie> bookmarkMovies) loaded,
    required TResult Function(String? message) loadedFailed,
  }) {
    return loadedFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveLoading,
    TResult? Function(Movie movie)? saveComplete,
    TResult? Function(String? message)? saveFailed,
    TResult? Function()? loading,
    TResult? Function(List<Movie> bookmarkMovies)? loaded,
    TResult? Function(String? message)? loadedFailed,
  }) {
    return loadedFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveLoading,
    TResult Function(Movie movie)? saveComplete,
    TResult Function(String? message)? saveFailed,
    TResult Function()? loading,
    TResult Function(List<Movie> bookmarkMovies)? loaded,
    TResult Function(String? message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_SaveComplete value) saveComplete,
    required TResult Function(_SaveFailed value) saveFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return loadedFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveLoading value)? saveLoading,
    TResult? Function(_SaveComplete value)? saveComplete,
    TResult? Function(_SaveFailed value)? saveFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return loadedFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_SaveComplete value)? saveComplete,
    TResult Function(_SaveFailed value)? saveFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadedFailed extends BookmarkState {
  const factory _LoadedFailed([final String? message]) = _$_LoadedFailed;
  const _LoadedFailed._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_LoadedFailedCopyWith<_$_LoadedFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
