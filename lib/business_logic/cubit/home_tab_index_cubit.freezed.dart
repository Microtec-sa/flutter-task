// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tab_index_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeTabIndexState {
  int get tabIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? initial,
    TResult? Function(int tabIndex)? tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabChange value) tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabChange value)? tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabChange value)? tabChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTabIndexStateCopyWith<HomeTabIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabIndexStateCopyWith<$Res> {
  factory $HomeTabIndexStateCopyWith(
          HomeTabIndexState value, $Res Function(HomeTabIndexState) then) =
      _$HomeTabIndexStateCopyWithImpl<$Res, HomeTabIndexState>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$HomeTabIndexStateCopyWithImpl<$Res, $Val extends HomeTabIndexState>
    implements $HomeTabIndexStateCopyWith<$Res> {
  _$HomeTabIndexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HomeTabIndexStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeTabIndexStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$_Initial(
      null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'HomeTabIndexState.initial(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabChange,
  }) {
    return initial(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? initial,
    TResult? Function(int tabIndex)? tabChange,
  }) {
    return initial?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabChange value) tabChange,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabChange value)? tabChange,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabChange value)? tabChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeTabIndexState {
  const factory _Initial(final int tabIndex) = _$_Initial;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TabChangeCopyWith<$Res>
    implements $HomeTabIndexStateCopyWith<$Res> {
  factory _$$_TabChangeCopyWith(
          _$_TabChange value, $Res Function(_$_TabChange) then) =
      __$$_TabChangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$_TabChangeCopyWithImpl<$Res>
    extends _$HomeTabIndexStateCopyWithImpl<$Res, _$_TabChange>
    implements _$$_TabChangeCopyWith<$Res> {
  __$$_TabChangeCopyWithImpl(
      _$_TabChange _value, $Res Function(_$_TabChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$_TabChange(
      null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabChange implements _TabChange {
  const _$_TabChange(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'HomeTabIndexState.tabChange(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabChange &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabChangeCopyWith<_$_TabChange> get copyWith =>
      __$$_TabChangeCopyWithImpl<_$_TabChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabChange,
  }) {
    return tabChange(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? initial,
    TResult? Function(int tabIndex)? tabChange,
  }) {
    return tabChange?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabChange value) tabChange,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabChange value)? tabChange,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabChange value)? tabChange,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class _TabChange implements HomeTabIndexState {
  const factory _TabChange(final int tabIndex) = _$_TabChange;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabChangeCopyWith<_$_TabChange> get copyWith =>
      throw _privateConstructorUsedError;
}
