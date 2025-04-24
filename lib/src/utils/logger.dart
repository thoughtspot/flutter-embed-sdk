import 'package:flutter/foundation.dart';
import 'package:flutter_embed_sdk/src/types/generated/types.dart';

class Logger {
  static LogLevel _currentLogLevel = LogLevel.INFO;

  static void setLogLevel(LogLevel? level) {
    _currentLogLevel = level ?? LogLevel.INFO;
  }

  static bool _shouldLog(LogLevel level) {
    return _currentLogLevel.index >= level.index;
  }

  static void debug(String message, [Object? error, StackTrace? stackTrace]) {
    if (_shouldLog(LogLevel.DEBUG)) {
      _log(LogLevel.DEBUG, message, error, stackTrace);
    }
  }

  static void info(String message, [Object? error, StackTrace? stackTrace]) {
    if (_shouldLog(LogLevel.INFO)) {
      _log(LogLevel.INFO, message, error, stackTrace);
    }
  }

  static void warning(String message, [Object? error, StackTrace? stackTrace]) {
    if (_shouldLog(LogLevel.WARN)) {
      _log(LogLevel.WARN, message, error, stackTrace);
    }
  }

  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    if (_shouldLog(LogLevel.ERROR)) {
      _log(LogLevel.ERROR, message, error, stackTrace);
    }
  }

  static void _log(LogLevel level, String message,
      [Object? error, StackTrace? stackTrace]) {
    final timestamp = DateTime.now().toIso8601String();
    final prefix = '[${level.value}]';

    if (error != null) {
      debugPrint('$timestamp $prefix $message\nError: $error');
      if (stackTrace != null) {
        debugPrint('Stack trace:\n$stackTrace');
      }
    } else {
      debugPrint('$timestamp $prefix $message');
    }
  }
}
