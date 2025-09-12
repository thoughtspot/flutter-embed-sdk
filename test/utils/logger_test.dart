import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_embed_sdk/src/utils/logger.dart';
import 'package:flutter_embed_sdk/src/types/generated/types.dart';

void main() {
  group('Logger', () {
    late Logger logger;
    late List<String> logOutput;

    setUp(() {
      logger = Logger();
      logOutput = [];
      // Set custom print function for testing
      Logger.setPrintFunction((String message) {
        logOutput.add(message);
      });
    });

    test('should use default name if not provided', () {
      expect(logger.name, 'ThoughtSpot');
    });

    test('should use custom name if provided', () {
      final customLogger = Logger(name: 'CustomApp');
      expect(customLogger.name, 'CustomApp');
    });

    test('should respect log level settings', () {
      logger.setLogLevel(LogLevel.INFO);
      expect(logger.getCanLog(LogLevel.INFO), true);
      expect(logger.getCanLog(LogLevel.DEBUG), false);
      expect(logger.getCanLog(LogLevel.ERROR), true);
    });

    test('should not log when level is SILENT', () {
      logger.setLogLevel(LogLevel.SILENT);
      logger.info('Test message');
      logger.error('Test error');
      expect(logOutput, isEmpty);
    });

    test('should format error messages without color', () {
      logger.setLogLevel(LogLevel.ERROR);
      logger.error('Test error');
      expect(logOutput.isNotEmpty, true);
      expect(logOutput.last, isNot(contains('\x1B[31m')));
      expect(logOutput.last, contains('[ERROR]'));
      expect(logOutput.last, contains('Test error'));
    });

    test('should format warning messages without color', () {
      logger.setLogLevel(LogLevel.WARN);
      logger.warn('Test warning');
      expect(logOutput.isNotEmpty, true);
      expect(logOutput.last, isNot(contains('\x1B[33m')));
      expect(logOutput.last, contains('[WARN]'));
      expect(logOutput.last, contains('Test warning'));
    });

    test('should format info messages without color', () {
      logger.setLogLevel(LogLevel.INFO);
      logger.info('Test info');
      expect(logOutput.isNotEmpty, true);
      expect(logOutput.last, contains('[INFO]'));
      expect(logOutput.last, isNot(contains('\x1B[')));
      expect(logOutput.last, contains('Test info'));
    });

    test('should format debug messages without color', () {
      logger.setLogLevel(LogLevel.DEBUG);
      logger.debug('Test debug');
      expect(logOutput.isNotEmpty, true);
      expect(logOutput.last, isNot(contains('\x1B[34m')));
      expect(logOutput.last, contains('[Debug]'));
      expect(logOutput.last, contains('Test debug'));
    });

    test('should include logger name in output', () {
      final customLogger = Logger(name: 'CustomApp');
      customLogger.setLogLevel(LogLevel.INFO);
      customLogger.info('Test message');
      expect(logOutput.isNotEmpty, true);
      expect(logOutput.last, contains('[CustomApp]'));
      expect(logOutput.last, contains('Test message'));
    });

    test('errorDebug should only log when level is DEBUG', () {
      // Test with DEBUG level
      logger.setLogLevel(LogLevel.DEBUG);
      logger.errorDebug('Test debug error');
      expect(logOutput.isNotEmpty, true);
      expect(logOutput.last, isNot(contains('\x1B[31m')));
      expect(logOutput.last, contains('[ERROR]'));
      expect(logOutput.last, contains('Test debug error'));

      // Clear output
      logOutput.clear();

      // Test with ERROR level
      logger.setLogLevel(LogLevel.ERROR);
      logger.errorDebug('Test debug error');
      expect(logOutput, isEmpty);

      // Test with INFO level
      logger.setLogLevel(LogLevel.INFO);
      logger.errorDebug('Test debug error');
      expect(logOutput, isEmpty);
    });

    test('errorDebug should include error and stack trace when provided', () {
      logger.setLogLevel(LogLevel.DEBUG);
      final error = Exception('Test debug exception');
      final stackTrace = StackTrace.current;
      logger.errorDebug('Test debug error', error, stackTrace);

      expect(logOutput.length,
          greaterThanOrEqualTo(2)); // Error message and stack trace
      expect(logOutput[0], contains('Test debug error'));
      expect(logOutput[0], contains('Test debug exception'));
      expect(logOutput[1], contains('Stack trace:'));
    });
  });
}
