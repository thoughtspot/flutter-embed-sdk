# Contributing to ThoughtSpot Flutter Embed SDK

Thank you for your interest in contributing to the ThoughtSpot Flutter Embed SDK! This document provides guidelines and instructions for contributing to this project.

## About the Project

The ThoughtSpot Flutter Embed SDK is a Flutter package that allows developers to seamlessly integrate ThoughtSpot's analytics and insights into Flutter applications. It provides a WebView-based solution for embedding ThoughtSpot content with programmatic control over the embedded view.

## Development Setup

1. Fork the repository
2. Clone your fork: `git clone https://github.com/your-username/flutter-embed-sdk.git`
3. Navigate to the project directory: `cd flutter-embed-sdk`
4. Install dependencies: `flutter pub get`
5. Generate mock files: `flutter pub run build_runner build`

## Testing

### Running Tests

To run all tests:

```bash
flutter test
```

To run tests with coverage:

```bash
flutter test --coverage
```

To view the coverage report:

```bash
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html  # On macOS
```

### Writing Tests

The project uses Flutter's testing framework along with Mockito for mocking dependencies. Here's how to write tests:

1. **Create a new test file** in the `test` directory with a name that corresponds to the file you're testing (e.g., `my_widget_test.dart` for testing `my_widget.dart`).

2. **Use the existing test structure** as a template:

   ```dart
   import 'package:flutter_test/flutter_test.dart';
   import 'package:mockito/mockito.dart';
   import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';

   import './mocks.mocks.dart';

   void main() {
     group('MyWidget', () {
       test('should behave correctly', () {
         // Test implementation
       });
     });
   }
   ```

3. **Mock dependencies** using the generated mock files:

   ```dart
   late MockWebViewController mockWebViewController;

   setUp(() {
     mockWebViewController = MockWebViewController();
   });
   ```

4. **Test controller behavior** by simulating messages from the WebView:

   ```dart
   test('handles message correctly', () {
     final controller = TestController.fromWebViewController(
       embedConfig: FakeEmbedConfig(),
       webViewController: mockWebViewController,
     );

     // Simulate a message from the WebView
     final message = JavaScriptMessage(
       message: jsonEncode({
         'type': 'SOME_MESSAGE_TYPE',
         'data': {'key': 'value'},
       }),
     );

     // Call the handler
     jsMessageHandler(message);

     // Verify the expected behavior
     verify(mockWebViewController.runJavaScript(any)).called(1);
   });
   ```

### Test Coverage

The project aims to maintain high test coverage. The `.coveragerc` file excludes the `types` directory from coverage requirements, as these are generated files.

## Code Style

- Follow the [Dart style guide](https://dart.dev/guides/language/effective-dart/style)
- Use `flutter analyze` to check for static analysis issues
- Run `flutter format .` to format your code

## Pull Request Process

1. Create a new branch for your feature or bugfix
2. Make your changes
3. Run tests to ensure everything works
4. Submit a pull request with a clear description of the changes

## Questions?

If you have any questions about contributing, please open an issue in the repository.
