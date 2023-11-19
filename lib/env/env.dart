import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'secret_keys.env')
abstract class Env {
  @EnviedField(varName: 'TMDB_KEY', obfuscate: true)
  static final String tmdbApiKey = _Env.tmdbApiKey;
}
