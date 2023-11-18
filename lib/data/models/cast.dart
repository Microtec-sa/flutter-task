import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

///Used for Character model
@freezed
class Cast with _$Cast {
  const factory Cast({
    @JsonKey(name: 'adult') required bool adult,
    @JsonKey(name: 'gender') required int gender,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'known_for_department') required String knownForDepartment,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'original_name') required String originalName,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'profile_path', defaultValue: '')
    required String profilePath,
    @JsonKey(name: 'cast_id') required int castId,
    @JsonKey(name: 'character') required String character,
    @JsonKey(name: 'credit_id') required String creditId,
    @JsonKey(name: 'order') required int order,
  }) = _Cast;

  ///Used to decode instances from json
  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
