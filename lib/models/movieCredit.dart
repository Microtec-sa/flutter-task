import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mostafa_gamil/models/movie.dart';

import 'app_config.dart';

class MovieCredits {
  final List<CastMember> cast;
  final List<CrewMember> crew;

  MovieCredits({
    required this.cast,
    required this.crew,
  });

  factory MovieCredits.fromJson(Map<String, dynamic> json) {
    final List<CastMember> cast = (json['cast'] as List)
        .map((item) => CastMember.fromJson(item))
        .toList();

    final List<CrewMember> crew = (json['crew'] as List)
        .map((item) => CrewMember.fromJson(item))
        .toList();

    return MovieCredits(
      cast: cast,
      crew: crew,
    );
  }
}

class CastMember {
  final String? name;
  final String? character;
  final String? profilePath;

  CastMember({
    this.name,
    this.character,
    this.profilePath,
  });

  factory CastMember.fromJson(Map<String, dynamic> json) {
    return CastMember(
      name: json['name'],
      character: json['character'],
      profilePath: json['profile_path'],
    );
  }

  String? profileURL() {
    if (profilePath == null) {
      return null;
    }

    final AppConfig _appConfig = GetIt.instance.get<AppConfig>();
    return '${_appConfig.BASE_IMAGE_API_URL}${this.profilePath}';
  }
}

class CrewMember {
  final String? name;
  final String? job;
  final String? profilePath;

  CrewMember({
    this.name,
    this.job,
    this.profilePath,
  });

  factory CrewMember.fromJson(Map<String, dynamic> json) {
    return CrewMember(
      name: json['name'],
      job: json['job'],
      profilePath: json['profile_path'],
    );
  }

  String? profileURL() {
    if (profilePath == null) {
      return null;
    }

    final AppConfig _appConfig = GetIt.instance.get<AppConfig>();
    return '${_appConfig.BASE_IMAGE_API_URL}${this.profilePath}';
  }
}
