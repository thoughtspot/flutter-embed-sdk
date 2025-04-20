import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/types/common-types.dart';

import './mocks.mocks.dart';
import './liveboard_controller_test.dart';

/// Tests for the BaseController class which handles WebView initialization and message handling.
///
/// These tests verify:
/// 1. Proper initialization of the WebView controller
/// 2. Correct handling of incoming messages from the WebView
/// 3. Proper message sending to the WebView based on different states
/// 4. Authentication token handling
void main() {
  late MockWebViewController mockWebViewController;
  late Function(JavaScriptMessage) jsMessageHandler;

  setUp(() {
    mockWebViewController = MockWebViewController();

    when(mockWebViewController.addJavaScriptChannel(
      any,
      onMessageReceived: anyNamed('onMessageReceived'),
    )).thenAnswer((invocation) {
      jsMessageHandler = invocation.namedArguments[#onMessageReceived];
      return Future.value();
    });
  });

  /// Tests that when the WebView is ready, the controller:
  /// - Sends an INIT message with getTokenFromSDK flag
  /// - Sends an EMBED message with proper Liveboard configuration
  test('initialization sends correct messages when ready', () {
    final controller = LiveboardController.fromWebViewController(
      embedConfig: FakeEmbedConfig(),
      viewConfig: FakeLiveboardViewConfig(),
      webViewController: mockWebViewController,
    );

    final initMessage = JavaScriptMessage(
      message: jsonEncode({
        'type': IncomingShellMessageType.INIT_VERCEL_SHELL.value,
        'status': 'ready',
      }),
    );

    jsMessageHandler(initMessage);

    verify(mockWebViewController.runJavaScript(argThat(allOf(
      contains('"type":"INIT"'),
      contains('"payload":{"getTokenFromSDK":true}'),
    )))).called(1);

    verify(mockWebViewController.runJavaScript(argThat(allOf(
      contains('"type":"EMBED"'),
      contains('"embedType":"Liveboard"'),
      contains('"viewConfig":{"liveboardId":"abc123"}'),
    )))).called(1);
  });

  /// Tests that when the WebView is not ready:
  /// - No INIT message is sent
  /// - No EMBED message is sent
  /// This ensures the controller doesn't send messages prematurely
  test('initialization should not send messages when not ready', () {
    final controller = LiveboardController.fromWebViewController(
      embedConfig: FakeEmbedConfig(),
      viewConfig: FakeLiveboardViewConfig(),
      webViewController: mockWebViewController,
    );

    final initMessage = JavaScriptMessage(
      message: jsonEncode({
        'type': IncomingShellMessageType.INIT_VERCEL_SHELL.value,
        'status': 'not_ready',
      }),
    );

    jsMessageHandler(initMessage);

    verifyNever(mockWebViewController
        .runJavaScript(argThat(contains('"type":"INIT"'))));
    verifyNever(mockWebViewController
        .runJavaScript(argThat(contains('"type":"EMBED"'))));
  });

  /// Tests the authentication token request handling:
  /// - Verifies that when an auth token is requested
  /// - The controller responds with the correct token format
  /// - The token is obtained from the embedConfig
  test('auth token request sends token when available', () async {
    final controller = LiveboardController.fromWebViewController(
      embedConfig: FakeEmbedConfig(),
      viewConfig: FakeLiveboardViewConfig(),
      webViewController: mockWebViewController,
    );

    final authMessage = JavaScriptMessage(
      message: jsonEncode({
        'type': IncomingShellMessageType.REQUEST_AUTH_TOKEN.value,
      }),
    );

    jsMessageHandler(authMessage);

    // Wait for the async token operation
    await Future.delayed(Duration.zero);

    verify(mockWebViewController.runJavaScript(argThat(allOf(
      contains('"type":"AUTH_TOKEN_RESPONSE"'),
      contains('"token":"mock_token"'),
    )))).called(1);
  });
}
