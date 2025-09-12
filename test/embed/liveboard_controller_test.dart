import 'dart:convert';
import 'package:flutter_embed_sdk/src/types/common-types.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'mocks.mocks.dart';

class FakeLiveboardViewConfig extends LiveboardViewConfig {
  @override
  Map<String, dynamic> toJson() => {'liveboardId': 'abc123'};
}

class FakeEmbedConfig extends EmbedConfig {
  FakeEmbedConfig()
      : super(
          authType: AuthType.None,
          thoughtSpotHost: 'https://test.thoughtspot.cloud',
        );

  @override
  Map<String, dynamic> toJson() => {};

  @override
  final EmbedConfigGetAuthToken? getAuthToken = FakeAuthTokenProvider();
}

class FakeAuthTokenProvider implements EmbedConfigGetAuthToken {
  @override
  Future<String> operate() async => 'mock_token';
}

void main() {
  late MockWebViewController mockWebViewController;
  late Function(JavaScriptMessage) jsMessageHandler;

  setUp(() {
    mockWebViewController = MockWebViewController();

    // Mock the WebViewController's addJavaScriptChannel method to capture the handler.
    when(mockWebViewController.addJavaScriptChannel(
      any,
      onMessageReceived: anyNamed('onMessageReceived'),
    )).thenAnswer((invocation) {
      jsMessageHandler = invocation.namedArguments[#onMessageReceived];
      return Future.value();
    });
  });

  test('trigger() should send HOST_EVENT with correct structure', () async {
    final controller = LiveboardController.fromWebViewController(
      viewConfig: FakeLiveboardViewConfig(),
      embedConfig: FakeEmbedConfig(),
      webViewController: mockWebViewController,
    );

    final payload = {'foo': 'bar'};

    await controller.trigger(HostEvent.AskSage, payload);

    verify(mockWebViewController.runJavaScript(argThat(
      allOf(
        contains('"eventName":"AskSage"'),
        contains('"type":"HOST_EVENT"'),
        contains('"payload":{"foo":"bar"}'),
      ),
    ))).called(1);
  });

  test('should call handler when shell sends EMBED_EVENT', () async {
    final controller = LiveboardController.fromWebViewController(
      viewConfig: FakeLiveboardViewConfig(),
      embedConfig: FakeEmbedConfig(),
      webViewController: mockWebViewController,
    );

    bool called = false;
    controller.on(EmbedEvent.AddToFavorites, (_) => called = true);

    // Simulate the incoming message from the JavaScript channel.
    final incomingMessage = JavaScriptMessage(
      message: jsonEncode({
        'type': IncomingShellMessageType.EMBED_EVENT.value,
        'eventName': EmbedEvent.AddToFavorites.value,
        'data': {'foo': 'bar'},
        'eventId': '123',
        'hasResponder': false,
      }),
    );

    // Simulate the WebView sending the message.
    jsMessageHandler(incomingMessage);

    expect(called, isTrue);
  });

  test('should unregister handler when off() is called', () async {
    final controller = LiveboardController.fromWebViewController(
      viewConfig: FakeLiveboardViewConfig(),
      embedConfig: FakeEmbedConfig(),
      webViewController: mockWebViewController,
    );

    int callCount = 0;
    handler(dynamic _) => callCount++;

    // Register the handler
    controller.on(EmbedEvent.AddToFavorites, handler);

    // Unregister the handler
    controller.off(EmbedEvent.AddToFavorites, handler);

    // Simulate an incoming message, which should not trigger the handler
    final incomingMessage = JavaScriptMessage(
      message: jsonEncode({
        'type': IncomingShellMessageType.EMBED_EVENT.value,
        'eventName': EmbedEvent.AddToFavorites.value,
        'data': {},
        'eventId': 'id',
        'hasResponder': false,
      }),
    );

    jsMessageHandler(incomingMessage);

    expect(callCount, 0); // Handler should not be called
  });
}
