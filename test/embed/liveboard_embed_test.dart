import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/types/common-types.dart';

import 'mocks.mocks.dart';
import 'liveboard_controller_test.dart';

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

  group('LiveboardController', () {
    test('sends correct embed type and view config on init', () {
      final viewConfig = FakeLiveboardViewConfig();
      final controller = LiveboardController.fromWebViewController(
        viewConfig: viewConfig,
        embedConfig: FakeEmbedConfig(),
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
        contains('"type":"EMBED"'),
        contains('"embedType":"Liveboard"'),
        contains('"liveboardId":"abc123"'),
      )))).called(1);
    });

    test('handles event triggers correctly', () async {
      final controller = LiveboardController.fromWebViewController(
        viewConfig: FakeLiveboardViewConfig(),
        embedConfig: FakeEmbedConfig(),
        webViewController: mockWebViewController,
      );

      final payload = {'test': 'data'};
      await controller.trigger(HostEvent.AskSage, payload);

      verify(mockWebViewController.runJavaScript(argThat(allOf(
        contains('"type":"HOST_EVENT"'),
        contains('"eventName":"AskSage"'),
        contains('"test":"data"'),
      )))).called(1);
    });
  });
}
