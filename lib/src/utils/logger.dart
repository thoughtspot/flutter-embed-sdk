import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_embed_sdk/src/types/generated/types.dart';

class Logger {
  String name;
  LogLevel _currentLogLevel = LogLevel.ERROR;

  // TODO: Remove this once flutter fixes the issue with colors in the console
  // https://github.com/flutter/flutter/issues/20663
  final bool _useColors = false;

  // For testing purposes
  static Function(String) _printFunction = print;

  Logger({this.name = 'ThoughtSpot'});

  // For testing purposes
  @visibleForTesting
  static void setPrintFunction(Function(String) printFunction) {
    _printFunction = printFunction;
  }

  bool getCanLog(LogLevel level) {
    if (level == LogLevel.SILENT) {
      return false;
    }

    return level.index <= _currentLogLevel.index;
  }

  void setLogLevel(LogLevel level) {
    _currentLogLevel = level;
  }

  void info(String message) {
    if (getCanLog(LogLevel.INFO)) {
      _printMessage(LogLevel.INFO, message);
    }
  }

  void error(String message) {
    if (getCanLog(LogLevel.ERROR)) {
      _printMessage(LogLevel.ERROR, message);
    }
  }

  void warn(String message) {
    if (getCanLog(LogLevel.WARN)) {
      _printMessage(LogLevel.WARN, message);
    }
  }

  void debug(String message) {
    if (getCanLog(LogLevel.DEBUG)) {
      _printMessage(LogLevel.DEBUG, message);
    }
  }

  void errorDebug(String message, [Object? error, StackTrace? stackTrace]) {
    if (_currentLogLevel == LogLevel.DEBUG) {
      final errorMessage = error != null ? '$message\nError: $error' : message;
      _printMessage(LogLevel.ERROR, errorMessage);
      if (stackTrace != null) {
        _printMessage(LogLevel.ERROR, 'Stack trace:\n$stackTrace');
      }
    }
  }

  String _getColorPrefix(LogLevel level) {
    if (!_useColors) return '';
    return switch (level) {
      LogLevel.ERROR => '\x1B[31m',
      LogLevel.WARN => '\x1B[33m',
      LogLevel.DEBUG => '\x1B[34m',
      _ => ''
    };
  }

  String _getColorSuffix() {
    return _useColors ? '\x1B[0m' : '';
  }

  void _printMessage(LogLevel level, String message) {
    final colorPrefix = _getColorPrefix(level);
    final colorSuffix = _getColorSuffix();
    final levelName =
        level == LogLevel.DEBUG ? 'Debug' : level.toString().split('.').last;
    final prefix = '$colorPrefix[$name] [$levelName]$colorSuffix';

    _printFunction('$prefix $message');
  }
}
