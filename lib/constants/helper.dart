import 'package:flutter/foundation.dart';

///Used to debug
class Log {
  /// Prinsts Log to the console
  static void debug(Object? object) {
    if (kDebugMode) print(object);
  }
}
