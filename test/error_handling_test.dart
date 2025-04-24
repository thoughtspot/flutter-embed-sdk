import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/types/common-types.dart';

import './mocks.mocks.dart';
import './liveboard_controller_test.dart';

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

  test('handles invalid JSON message gracefully', () {
    final controller = LiveboardController.fromWebViewController(
      embedConfig: FakeEmbedConfig(),
      viewConfig: FakeLiveboardViewConfig(),
      webViewController: mockWebViewController,
    );

    final invalidMessage = JavaScriptMessage(
      message: 'invalid json',
    );

    // The controller should handle invalid JSON without throwing
    expect(() {
      try {
        jsMessageHandler(invalidMessage);
      } catch (e) {
        fail('Controller should handle invalid JSON gracefully');
      }
    }, returnsNormally);
  });

  test('handles missing message type gracefully', () {
    final controller = LiveboardController.fromWebViewController(
      embedConfig: FakeEmbedConfig(),
      viewConfig: FakeLiveboardViewConfig(),
      webViewController: mockWebViewController,
    );

    final message = JavaScriptMessage(
      message: jsonEncode({
        'data': {'foo': 'bar'},
      }),
    );

    // The controller should handle missing message type without throwing
    expect(() {
      try {
        jsMessageHandler(message);
      } catch (e) {
        fail('Controller should handle missing message type gracefully');
      }
    }, returnsNormally);
  });

  test('handles null auth token provider gracefully', () async {
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

    // The controller should handle null auth provider without throwing
    expect(() {
      try {
        jsMessageHandler(authMessage);
      } catch (e) {
        fail('Controller should handle null auth provider gracefully');
      }
    }, returnsNormally);
  });

  test('handles multiple event handlers correctly', () async {
    final controller = LiveboardController.fromWebViewController(
      viewConfig: FakeLiveboardViewConfig(),
      embedConfig: FakeEmbedConfig(),
      webViewController: mockWebViewController,
    );

    int handler1Count = 0;
    int handler2Count = 0;

    controller.on(EmbedEvent.AddToFavorites, (_) => handler1Count++);
    controller.on(EmbedEvent.AddToFavorites, (_) => handler2Count++);

    final eventMessage = JavaScriptMessage(
      message: jsonEncode({
        'type': IncomingShellMessageType.EMBED_EVENT.value,
        'eventName': EmbedEvent.AddToFavorites.value,
        'data': {},
        'eventId': 'id',
        'hasResponder': false,
      }),
    );

    jsMessageHandler(eventMessage);

    expect(handler1Count, 1);
    expect(handler2Count, 1);
  });
}
