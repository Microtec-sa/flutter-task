// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path', defaultValue: '')
  String get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'cast_id')
  int get castId => throw _privateConstructorUsedError;
  @JsonKey(name: 'character')
  String get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_id')
  String get creditId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order')
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'known_for_department') String knownForDepartment,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'profile_path', defaultValue: '') String profilePath,
      @JsonKey(name: 'cast_id') int castId,
      @JsonKey(name: 'character') String character,
      @JsonKey(name: 'credit_id') String creditId,
      @JsonKey(name: 'order') int order});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? knownForDepartment = null,
    Object? name = null,
    Object? originalName = null,
    Object? popularity = null,
    Object? profilePath = null,
    Object? castId = null,
    Object? character = null,
    Object? creditId = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      knownForDepartment: null == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
      castId: null == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastImplCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$CastImplCopyWith(
          _$CastImpl value, $Res Function(_$CastImpl) then) =
      __$$CastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'known_for_department') String knownForDepartment,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'profile_path', defaultValue: '') String profilePath,
      @JsonKey(name: 'cast_id') int castId,
      @JsonKey(name: 'character') String character,
      @JsonKey(name: 'credit_id') String creditId,
      @JsonKey(name: 'order') int order});
}

/// @nodoc
class __$$CastImplCopyWithImpl<$Res>
    extends _$CastCopyWithImpl<$Res, _$CastImpl>
    implements _$$CastImplCopyWith<$Res> {
  __$$CastImplCopyWithImpl(_$CastImpl _value, $Res Function(_$CastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? knownForDepartment = null,
    Object? name = null,
    Object? originalName = null,
    Object? popularity = null,
    Object? profilePath = null,
    Object? castId = null,
    Object? character = null,
    Object? creditId = null,
    Object? order = null,
  }) {
    return _then(_$CastImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      knownForDepartment: null == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
      castId: null == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastImpl with DiagnosticableTreeMixin implements _Cast {
  const _$CastImpl(
      {@JsonKey(name: 'adult') required this.adult,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'known_for_department') required this.knownForDepartment,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'original_name') required this.originalName,
      @JsonKey(name: 'popularity') required this.popularity,
      @JsonKey(name: 'profile_path', defaultValue: '')
      required this.profilePath,
      @JsonKey(name: 'cast_id') required this.castId,
      @JsonKey(name: 'character') required this.character,
      @JsonKey(name: 'credit_id') required this.creditId,
      @JsonKey(name: 'order') required this.order});

  factory _$CastImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastImplFromJson(json);

  @override
  @JsonKey(name: 'adult')
  final bool adult;
  @override
  @JsonKey(name: 'gender')
  final int gender;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'known_for_department')
  final String knownForDepartment;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'original_name')
  final String originalName;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'profile_path', defaultValue: '')
  final String profilePath;
  @override
  @JsonKey(name: 'cast_id')
  final int castId;
  @override
  @JsonKey(name: 'character')
  final String character;
  @override
  @JsonKey(name: 'credit_id')
  final String creditId;
  @override
  @JsonKey(name: 'order')
  final int order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cast(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cast'))
      ..add(DiagnosticsProperty('adult', adult))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('knownForDepartment', knownForDepartment))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('originalName', originalName))
      ..add(DiagnosticsProperty('popularity', popularity))
      ..add(DiagnosticsProperty('profilePath', profilePath))
      ..add(DiagnosticsProperty('castId', castId))
      ..add(DiagnosticsProperty('character', character))
      ..add(DiagnosticsProperty('creditId', creditId))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.castId, castId) || other.castId == castId) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      knownForDepartment,
      name,
      originalName,
      popularity,
      profilePath,
      castId,
      character,
      creditId,
      order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      __$$CastImplCopyWithImpl<_$CastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastImplToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {@JsonKey(name: 'adult') required final bool adult,
      @JsonKey(name: 'gender') required final int gender,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'known_for_department')
      required final String knownForDepartment,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'original_name') required final String originalName,
      @JsonKey(name: 'popularity') required final double popularity,
      @JsonKey(name: 'profile_path', defaultValue: '')
      required final String profilePath,
      @JsonKey(name: 'cast_id') required final int castId,
      @JsonKey(name: 'character') required final String character,
      @JsonKey(name: 'credit_id') required final String creditId,
      @JsonKey(name: 'order') required final int order}) = _$CastImpl;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$CastImpl.fromJson;

  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(name: 'gender')
  int get gender;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'original_name')
  String get originalName;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'profile_path', defaultValue: '')
  String get profilePath;
  @override
  @JsonKey(name: 'cast_id')
  int get castId;
  @override
  @JsonKey(name: 'character')
  String get character;
  @override
  @JsonKey(name: 'credit_id')
  String get creditId;
  @override
  @JsonKey(name: 'order')
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
