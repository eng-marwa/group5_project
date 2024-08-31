// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopularMovieState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(ApiException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(ApiException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularMovieInitial<T> value) initial,
    required TResult Function(PopularMovieLoading<T> value) loading,
    required TResult Function(PopularMovieLoaded<T> value) loaded,
    required TResult Function(PopularMovieError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopularMovieInitial<T> value)? initial,
    TResult? Function(PopularMovieLoading<T> value)? loading,
    TResult? Function(PopularMovieLoaded<T> value)? loaded,
    TResult? Function(PopularMovieError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieInitial<T> value)? initial,
    TResult Function(PopularMovieLoading<T> value)? loading,
    TResult Function(PopularMovieLoaded<T> value)? loaded,
    TResult Function(PopularMovieError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMovieStateCopyWith<T, $Res> {
  factory $PopularMovieStateCopyWith(PopularMovieState<T> value,
          $Res Function(PopularMovieState<T>) then) =
      _$PopularMovieStateCopyWithImpl<T, $Res, PopularMovieState<T>>;
}

/// @nodoc
class _$PopularMovieStateCopyWithImpl<T, $Res,
        $Val extends PopularMovieState<T>>
    implements $PopularMovieStateCopyWith<T, $Res> {
  _$PopularMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PopularMovieInitialImplCopyWith<T, $Res> {
  factory _$$PopularMovieInitialImplCopyWith(_$PopularMovieInitialImpl<T> value,
          $Res Function(_$PopularMovieInitialImpl<T>) then) =
      __$$PopularMovieInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PopularMovieInitialImplCopyWithImpl<T, $Res>
    extends _$PopularMovieStateCopyWithImpl<T, $Res,
        _$PopularMovieInitialImpl<T>>
    implements _$$PopularMovieInitialImplCopyWith<T, $Res> {
  __$$PopularMovieInitialImplCopyWithImpl(_$PopularMovieInitialImpl<T> _value,
      $Res Function(_$PopularMovieInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PopularMovieInitialImpl<T> implements PopularMovieInitial<T> {
  _$PopularMovieInitialImpl();

  @override
  String toString() {
    return 'PopularMovieState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMovieInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularMovieInitial<T> value) initial,
    required TResult Function(PopularMovieLoading<T> value) loading,
    required TResult Function(PopularMovieLoaded<T> value) loaded,
    required TResult Function(PopularMovieError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopularMovieInitial<T> value)? initial,
    TResult? Function(PopularMovieLoading<T> value)? loading,
    TResult? Function(PopularMovieLoaded<T> value)? loaded,
    TResult? Function(PopularMovieError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieInitial<T> value)? initial,
    TResult Function(PopularMovieLoading<T> value)? loading,
    TResult Function(PopularMovieLoaded<T> value)? loaded,
    TResult Function(PopularMovieError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PopularMovieInitial<T> implements PopularMovieState<T> {
  factory PopularMovieInitial() = _$PopularMovieInitialImpl<T>;
}

/// @nodoc
abstract class _$$PopularMovieLoadingImplCopyWith<T, $Res> {
  factory _$$PopularMovieLoadingImplCopyWith(_$PopularMovieLoadingImpl<T> value,
          $Res Function(_$PopularMovieLoadingImpl<T>) then) =
      __$$PopularMovieLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PopularMovieLoadingImplCopyWithImpl<T, $Res>
    extends _$PopularMovieStateCopyWithImpl<T, $Res,
        _$PopularMovieLoadingImpl<T>>
    implements _$$PopularMovieLoadingImplCopyWith<T, $Res> {
  __$$PopularMovieLoadingImplCopyWithImpl(_$PopularMovieLoadingImpl<T> _value,
      $Res Function(_$PopularMovieLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PopularMovieLoadingImpl<T> implements PopularMovieLoading<T> {
  _$PopularMovieLoadingImpl();

  @override
  String toString() {
    return 'PopularMovieState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMovieLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(ApiException error)? error,
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
    required TResult Function(PopularMovieInitial<T> value) initial,
    required TResult Function(PopularMovieLoading<T> value) loading,
    required TResult Function(PopularMovieLoaded<T> value) loaded,
    required TResult Function(PopularMovieError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopularMovieInitial<T> value)? initial,
    TResult? Function(PopularMovieLoading<T> value)? loading,
    TResult? Function(PopularMovieLoaded<T> value)? loaded,
    TResult? Function(PopularMovieError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieInitial<T> value)? initial,
    TResult Function(PopularMovieLoading<T> value)? loading,
    TResult Function(PopularMovieLoaded<T> value)? loaded,
    TResult Function(PopularMovieError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PopularMovieLoading<T> implements PopularMovieState<T> {
  factory PopularMovieLoading() = _$PopularMovieLoadingImpl<T>;
}

/// @nodoc
abstract class _$$PopularMovieLoadedImplCopyWith<T, $Res> {
  factory _$$PopularMovieLoadedImplCopyWith(_$PopularMovieLoadedImpl<T> value,
          $Res Function(_$PopularMovieLoadedImpl<T>) then) =
      __$$PopularMovieLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$PopularMovieLoadedImplCopyWithImpl<T, $Res>
    extends _$PopularMovieStateCopyWithImpl<T, $Res,
        _$PopularMovieLoadedImpl<T>>
    implements _$$PopularMovieLoadedImplCopyWith<T, $Res> {
  __$$PopularMovieLoadedImplCopyWithImpl(_$PopularMovieLoadedImpl<T> _value,
      $Res Function(_$PopularMovieLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PopularMovieLoadedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PopularMovieLoadedImpl<T> implements PopularMovieLoaded<T> {
  _$PopularMovieLoadedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'PopularMovieState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMovieLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMovieLoadedImplCopyWith<T, _$PopularMovieLoadedImpl<T>>
      get copyWith => __$$PopularMovieLoadedImplCopyWithImpl<T,
          _$PopularMovieLoadedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularMovieInitial<T> value) initial,
    required TResult Function(PopularMovieLoading<T> value) loading,
    required TResult Function(PopularMovieLoaded<T> value) loaded,
    required TResult Function(PopularMovieError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopularMovieInitial<T> value)? initial,
    TResult? Function(PopularMovieLoading<T> value)? loading,
    TResult? Function(PopularMovieLoaded<T> value)? loaded,
    TResult? Function(PopularMovieError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieInitial<T> value)? initial,
    TResult Function(PopularMovieLoading<T> value)? loading,
    TResult Function(PopularMovieLoaded<T> value)? loaded,
    TResult Function(PopularMovieError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PopularMovieLoaded<T> implements PopularMovieState<T> {
  factory PopularMovieLoaded(final T data) = _$PopularMovieLoadedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$PopularMovieLoadedImplCopyWith<T, _$PopularMovieLoadedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopularMovieErrorImplCopyWith<T, $Res> {
  factory _$$PopularMovieErrorImplCopyWith(_$PopularMovieErrorImpl<T> value,
          $Res Function(_$PopularMovieErrorImpl<T>) then) =
      __$$PopularMovieErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiException error});
}

/// @nodoc
class __$$PopularMovieErrorImplCopyWithImpl<T, $Res>
    extends _$PopularMovieStateCopyWithImpl<T, $Res, _$PopularMovieErrorImpl<T>>
    implements _$$PopularMovieErrorImplCopyWith<T, $Res> {
  __$$PopularMovieErrorImplCopyWithImpl(_$PopularMovieErrorImpl<T> _value,
      $Res Function(_$PopularMovieErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PopularMovieErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiException,
    ));
  }
}

/// @nodoc

class _$PopularMovieErrorImpl<T> implements PopularMovieError<T> {
  _$PopularMovieErrorImpl(this.error);

  @override
  final ApiException error;

  @override
  String toString() {
    return 'PopularMovieState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMovieErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMovieErrorImplCopyWith<T, _$PopularMovieErrorImpl<T>>
      get copyWith =>
          __$$PopularMovieErrorImplCopyWithImpl<T, _$PopularMovieErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularMovieInitial<T> value) initial,
    required TResult Function(PopularMovieLoading<T> value) loading,
    required TResult Function(PopularMovieLoaded<T> value) loaded,
    required TResult Function(PopularMovieError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopularMovieInitial<T> value)? initial,
    TResult? Function(PopularMovieLoading<T> value)? loading,
    TResult? Function(PopularMovieLoaded<T> value)? loaded,
    TResult? Function(PopularMovieError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieInitial<T> value)? initial,
    TResult Function(PopularMovieLoading<T> value)? loading,
    TResult Function(PopularMovieLoaded<T> value)? loaded,
    TResult Function(PopularMovieError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PopularMovieError<T> implements PopularMovieState<T> {
  factory PopularMovieError(final ApiException error) =
      _$PopularMovieErrorImpl<T>;

  ApiException get error;
  @JsonKey(ignore: true)
  _$$PopularMovieErrorImplCopyWith<T, _$PopularMovieErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
