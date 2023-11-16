// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieInitial,
    required TResult Function() movieLoadInProgress,
    required TResult Function(List<Movie> apiResponse) movieFetched,
    required TResult Function(String message) movieFaild,
    required TResult Function() movieEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieInitial,
    TResult? Function()? movieLoadInProgress,
    TResult? Function(List<Movie> apiResponse)? movieFetched,
    TResult? Function(String message)? movieFaild,
    TResult? Function()? movieEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieInitial,
    TResult Function()? movieLoadInProgress,
    TResult Function(List<Movie> apiResponse)? movieFetched,
    TResult Function(String message)? movieFaild,
    TResult Function()? movieEndOfList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) movieInitial,
    required TResult Function(_LoadInProgress value) movieLoadInProgress,
    required TResult Function(_Fetched value) movieFetched,
    required TResult Function(_Faild value) movieFaild,
    required TResult Function(_EndOfList value) movieEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? movieInitial,
    TResult? Function(_LoadInProgress value)? movieLoadInProgress,
    TResult? Function(_Fetched value)? movieFetched,
    TResult? Function(_Faild value)? movieFaild,
    TResult? Function(_EndOfList value)? movieEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? movieInitial,
    TResult Function(_LoadInProgress value)? movieLoadInProgress,
    TResult Function(_Fetched value)? movieFetched,
    TResult Function(_Faild value)? movieFaild,
    TResult Function(_EndOfList value)? movieEndOfList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MovieState.movieInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieInitial,
    required TResult Function() movieLoadInProgress,
    required TResult Function(List<Movie> apiResponse) movieFetched,
    required TResult Function(String message) movieFaild,
    required TResult Function() movieEndOfList,
  }) {
    return movieInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieInitial,
    TResult? Function()? movieLoadInProgress,
    TResult? Function(List<Movie> apiResponse)? movieFetched,
    TResult? Function(String message)? movieFaild,
    TResult? Function()? movieEndOfList,
  }) {
    return movieInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieInitial,
    TResult Function()? movieLoadInProgress,
    TResult Function(List<Movie> apiResponse)? movieFetched,
    TResult Function(String message)? movieFaild,
    TResult Function()? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieInitial != null) {
      return movieInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) movieInitial,
    required TResult Function(_LoadInProgress value) movieLoadInProgress,
    required TResult Function(_Fetched value) movieFetched,
    required TResult Function(_Faild value) movieFaild,
    required TResult Function(_EndOfList value) movieEndOfList,
  }) {
    return movieInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? movieInitial,
    TResult? Function(_LoadInProgress value)? movieLoadInProgress,
    TResult? Function(_Fetched value)? movieFetched,
    TResult? Function(_Faild value)? movieFaild,
    TResult? Function(_EndOfList value)? movieEndOfList,
  }) {
    return movieInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? movieInitial,
    TResult Function(_LoadInProgress value)? movieLoadInProgress,
    TResult Function(_Fetched value)? movieFetched,
    TResult Function(_Faild value)? movieFaild,
    TResult Function(_EndOfList value)? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieInitial != null) {
      return movieInitial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'MovieState.movieLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieInitial,
    required TResult Function() movieLoadInProgress,
    required TResult Function(List<Movie> apiResponse) movieFetched,
    required TResult Function(String message) movieFaild,
    required TResult Function() movieEndOfList,
  }) {
    return movieLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieInitial,
    TResult? Function()? movieLoadInProgress,
    TResult? Function(List<Movie> apiResponse)? movieFetched,
    TResult? Function(String message)? movieFaild,
    TResult? Function()? movieEndOfList,
  }) {
    return movieLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieInitial,
    TResult Function()? movieLoadInProgress,
    TResult Function(List<Movie> apiResponse)? movieFetched,
    TResult Function(String message)? movieFaild,
    TResult Function()? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieLoadInProgress != null) {
      return movieLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) movieInitial,
    required TResult Function(_LoadInProgress value) movieLoadInProgress,
    required TResult Function(_Fetched value) movieFetched,
    required TResult Function(_Faild value) movieFaild,
    required TResult Function(_EndOfList value) movieEndOfList,
  }) {
    return movieLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? movieInitial,
    TResult? Function(_LoadInProgress value)? movieLoadInProgress,
    TResult? Function(_Fetched value)? movieFetched,
    TResult? Function(_Faild value)? movieFaild,
    TResult? Function(_EndOfList value)? movieEndOfList,
  }) {
    return movieLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? movieInitial,
    TResult Function(_LoadInProgress value)? movieLoadInProgress,
    TResult Function(_Fetched value)? movieFetched,
    TResult Function(_Faild value)? movieFaild,
    TResult Function(_EndOfList value)? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieLoadInProgress != null) {
      return movieLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements MovieState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> apiResponse});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResponse = null,
  }) {
    return _then(_$FetchedImpl(
      null == apiResponse
          ? _value._apiResponse
          : apiResponse // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl(final List<Movie> apiResponse)
      : _apiResponse = apiResponse;

  final List<Movie> _apiResponse;
  @override
  List<Movie> get apiResponse {
    if (_apiResponse is EqualUnmodifiableListView) return _apiResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apiResponse);
  }

  @override
  String toString() {
    return 'MovieState.movieFetched(apiResponse: $apiResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            const DeepCollectionEquality()
                .equals(other._apiResponse, _apiResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_apiResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieInitial,
    required TResult Function() movieLoadInProgress,
    required TResult Function(List<Movie> apiResponse) movieFetched,
    required TResult Function(String message) movieFaild,
    required TResult Function() movieEndOfList,
  }) {
    return movieFetched(apiResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieInitial,
    TResult? Function()? movieLoadInProgress,
    TResult? Function(List<Movie> apiResponse)? movieFetched,
    TResult? Function(String message)? movieFaild,
    TResult? Function()? movieEndOfList,
  }) {
    return movieFetched?.call(apiResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieInitial,
    TResult Function()? movieLoadInProgress,
    TResult Function(List<Movie> apiResponse)? movieFetched,
    TResult Function(String message)? movieFaild,
    TResult Function()? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieFetched != null) {
      return movieFetched(apiResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) movieInitial,
    required TResult Function(_LoadInProgress value) movieLoadInProgress,
    required TResult Function(_Fetched value) movieFetched,
    required TResult Function(_Faild value) movieFaild,
    required TResult Function(_EndOfList value) movieEndOfList,
  }) {
    return movieFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? movieInitial,
    TResult? Function(_LoadInProgress value)? movieLoadInProgress,
    TResult? Function(_Fetched value)? movieFetched,
    TResult? Function(_Faild value)? movieFaild,
    TResult? Function(_EndOfList value)? movieEndOfList,
  }) {
    return movieFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? movieInitial,
    TResult Function(_LoadInProgress value)? movieLoadInProgress,
    TResult Function(_Fetched value)? movieFetched,
    TResult Function(_Faild value)? movieFaild,
    TResult Function(_EndOfList value)? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieFetched != null) {
      return movieFetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements MovieState {
  const factory _Fetched(final List<Movie> apiResponse) = _$FetchedImpl;

  List<Movie> get apiResponse;
  @JsonKey(ignore: true)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaildImplCopyWith<$Res> {
  factory _$$FaildImplCopyWith(
          _$FaildImpl value, $Res Function(_$FaildImpl) then) =
      __$$FaildImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FaildImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$FaildImpl>
    implements _$$FaildImplCopyWith<$Res> {
  __$$FaildImplCopyWithImpl(
      _$FaildImpl _value, $Res Function(_$FaildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FaildImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FaildImpl implements _Faild {
  const _$FaildImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieState.movieFaild(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaildImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaildImplCopyWith<_$FaildImpl> get copyWith =>
      __$$FaildImplCopyWithImpl<_$FaildImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieInitial,
    required TResult Function() movieLoadInProgress,
    required TResult Function(List<Movie> apiResponse) movieFetched,
    required TResult Function(String message) movieFaild,
    required TResult Function() movieEndOfList,
  }) {
    return movieFaild(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieInitial,
    TResult? Function()? movieLoadInProgress,
    TResult? Function(List<Movie> apiResponse)? movieFetched,
    TResult? Function(String message)? movieFaild,
    TResult? Function()? movieEndOfList,
  }) {
    return movieFaild?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieInitial,
    TResult Function()? movieLoadInProgress,
    TResult Function(List<Movie> apiResponse)? movieFetched,
    TResult Function(String message)? movieFaild,
    TResult Function()? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieFaild != null) {
      return movieFaild(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) movieInitial,
    required TResult Function(_LoadInProgress value) movieLoadInProgress,
    required TResult Function(_Fetched value) movieFetched,
    required TResult Function(_Faild value) movieFaild,
    required TResult Function(_EndOfList value) movieEndOfList,
  }) {
    return movieFaild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? movieInitial,
    TResult? Function(_LoadInProgress value)? movieLoadInProgress,
    TResult? Function(_Fetched value)? movieFetched,
    TResult? Function(_Faild value)? movieFaild,
    TResult? Function(_EndOfList value)? movieEndOfList,
  }) {
    return movieFaild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? movieInitial,
    TResult Function(_LoadInProgress value)? movieLoadInProgress,
    TResult Function(_Fetched value)? movieFetched,
    TResult Function(_Faild value)? movieFaild,
    TResult Function(_EndOfList value)? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieFaild != null) {
      return movieFaild(this);
    }
    return orElse();
  }
}

abstract class _Faild implements MovieState {
  const factory _Faild(final String message) = _$FaildImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FaildImplCopyWith<_$FaildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndOfListImplCopyWith<$Res> {
  factory _$$EndOfListImplCopyWith(
          _$EndOfListImpl value, $Res Function(_$EndOfListImpl) then) =
      __$$EndOfListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndOfListImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$EndOfListImpl>
    implements _$$EndOfListImplCopyWith<$Res> {
  __$$EndOfListImplCopyWithImpl(
      _$EndOfListImpl _value, $Res Function(_$EndOfListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndOfListImpl implements _EndOfList {
  const _$EndOfListImpl();

  @override
  String toString() {
    return 'MovieState.movieEndOfList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndOfListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieInitial,
    required TResult Function() movieLoadInProgress,
    required TResult Function(List<Movie> apiResponse) movieFetched,
    required TResult Function(String message) movieFaild,
    required TResult Function() movieEndOfList,
  }) {
    return movieEndOfList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieInitial,
    TResult? Function()? movieLoadInProgress,
    TResult? Function(List<Movie> apiResponse)? movieFetched,
    TResult? Function(String message)? movieFaild,
    TResult? Function()? movieEndOfList,
  }) {
    return movieEndOfList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieInitial,
    TResult Function()? movieLoadInProgress,
    TResult Function(List<Movie> apiResponse)? movieFetched,
    TResult Function(String message)? movieFaild,
    TResult Function()? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieEndOfList != null) {
      return movieEndOfList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) movieInitial,
    required TResult Function(_LoadInProgress value) movieLoadInProgress,
    required TResult Function(_Fetched value) movieFetched,
    required TResult Function(_Faild value) movieFaild,
    required TResult Function(_EndOfList value) movieEndOfList,
  }) {
    return movieEndOfList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? movieInitial,
    TResult? Function(_LoadInProgress value)? movieLoadInProgress,
    TResult? Function(_Fetched value)? movieFetched,
    TResult? Function(_Faild value)? movieFaild,
    TResult? Function(_EndOfList value)? movieEndOfList,
  }) {
    return movieEndOfList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? movieInitial,
    TResult Function(_LoadInProgress value)? movieLoadInProgress,
    TResult Function(_Fetched value)? movieFetched,
    TResult Function(_Faild value)? movieFaild,
    TResult Function(_EndOfList value)? movieEndOfList,
    required TResult orElse(),
  }) {
    if (movieEndOfList != null) {
      return movieEndOfList(this);
    }
    return orElse();
  }
}

abstract class _EndOfList implements MovieState {
  const factory _EndOfList() = _$EndOfListImpl;
}

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieFetch,
    required TResult Function() movieFetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieFetch,
    TResult? Function()? movieFetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieFetch,
    TResult Function()? movieFetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) movieFetch,
    required TResult Function(FetchMore value) movieFetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? movieFetch,
    TResult? Function(FetchMore value)? movieFetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? movieFetch,
    TResult Function(FetchMore value)? movieFetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
          MovieEvent value, $Res Function(MovieEvent) then) =
      _$MovieEventCopyWithImpl<$Res, MovieEvent>;
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res, $Val extends MovieEvent>
    implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'MovieEvent.movieFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieFetch,
    required TResult Function() movieFetchMore,
  }) {
    return movieFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieFetch,
    TResult? Function()? movieFetchMore,
  }) {
    return movieFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieFetch,
    TResult Function()? movieFetchMore,
    required TResult orElse(),
  }) {
    if (movieFetch != null) {
      return movieFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) movieFetch,
    required TResult Function(FetchMore value) movieFetchMore,
  }) {
    return movieFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? movieFetch,
    TResult? Function(FetchMore value)? movieFetchMore,
  }) {
    return movieFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? movieFetch,
    TResult Function(FetchMore value)? movieFetchMore,
    required TResult orElse(),
  }) {
    if (movieFetch != null) {
      return movieFetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements MovieEvent {
  const factory Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$FetchMoreImplCopyWith<$Res> {
  factory _$$FetchMoreImplCopyWith(
          _$FetchMoreImpl value, $Res Function(_$FetchMoreImpl) then) =
      __$$FetchMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$FetchMoreImpl>
    implements _$$FetchMoreImplCopyWith<$Res> {
  __$$FetchMoreImplCopyWithImpl(
      _$FetchMoreImpl _value, $Res Function(_$FetchMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMoreImpl implements FetchMore {
  const _$FetchMoreImpl();

  @override
  String toString() {
    return 'MovieEvent.movieFetchMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() movieFetch,
    required TResult Function() movieFetchMore,
  }) {
    return movieFetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? movieFetch,
    TResult? Function()? movieFetchMore,
  }) {
    return movieFetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? movieFetch,
    TResult Function()? movieFetchMore,
    required TResult orElse(),
  }) {
    if (movieFetchMore != null) {
      return movieFetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) movieFetch,
    required TResult Function(FetchMore value) movieFetchMore,
  }) {
    return movieFetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? movieFetch,
    TResult? Function(FetchMore value)? movieFetchMore,
  }) {
    return movieFetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? movieFetch,
    TResult Function(FetchMore value)? movieFetchMore,
    required TResult orElse(),
  }) {
    if (movieFetchMore != null) {
      return movieFetchMore(this);
    }
    return orElse();
  }
}

abstract class FetchMore implements MovieEvent {
  const factory FetchMore() = _$FetchMoreImpl;
}
