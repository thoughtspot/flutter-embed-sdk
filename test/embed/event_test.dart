import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/embed/base_embed.dart';
import 'package:flutter_embed_sdk/src/types/generated/types.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'test_helper.dart';
import 'test_helper.mocks.dart';

@GenerateMocks([WebViewController])
void main() {
  late LiveboardController controller;
  late MockWebViewController mockWebViewController;
  late void Function(JavaScriptMessage) onMessageReceived;

  setUp(() {
    mockWebViewController = MockWebViewController();

    // Capture the onMessageReceived callback
    when(
      mockWebViewController.addJavaScriptChannel(
        'ReactNativeWebView',
        onMessageReceived: anyNamed('onMessageReceived'),
      ),
    ).thenAnswer((invocation) {
      onMessageReceived =
          invocation.namedArguments[#onMessageReceived]
              as void Function(JavaScriptMessage);
      return Future.value();
    });

    controller = LiveboardController.fromWebViewController(
      viewConfig: LiveboardViewConfig(liveboardId: 'test-liveboard'),
      embedConfig: EmbedConfig(
        authType: AuthType.None,
        thoughtSpotHost: 'https://thoughtspot.com',
        getAuthToken: TestAuthToken(),
      ),
      webViewController: mockWebViewController,
    );
  });

  group('Event handling tests', () {
    test('trigger sends correct message to shell', () {
      final eventData = {'test': 'data'};
      controller.trigger(HostEvent.Search, eventData);

      verify(
        mockWebViewController.runJavaScript(argThat(contains('HOST_EVENT'))),
      ).called(1);
    });

    test('multiple handlers can be registered for same event', () {
      var handler1Called = false;
      var handler2Called = false;

      controller.on(EmbedEvent.Data, (data) => handler1Called = true);
      controller.on(EmbedEvent.Data, (data) => handler2Called = true);

      onMessageReceived(TestHelper.createMessage('data', {}));

      expect(handler1Called, true);
      expect(handler2Called, true);
    });

    test('handlers for different events do not interfere', () {
      var dataHandlerCalled = false;
      var loadHandlerCalled = false;

      controller.on(EmbedEvent.Data, (data) => dataHandlerCalled = true);
      controller.on(EmbedEvent.Load, (data) => loadHandlerCalled = true);

      onMessageReceived(TestHelper.createMessage('data', {}));

      expect(dataHandlerCalled, true);
      expect(loadHandlerCalled, false);
    });

    test('unregister removes specific handler', () {
      var handler1Called = false;
      var handler2Called = false;

      void handler1(data) => handler1Called = true;
      void handler2(data) => handler2Called = true;

      controller.on(EmbedEvent.Data, handler1);
      controller.on(EmbedEvent.Data, handler2);

      controller.off(EmbedEvent.Data, handler1);

      onMessageReceived(TestHelper.createMessage('data', {}));

      expect(handler1Called, false);
      expect(handler2Called, true);
    });

    test('unregister all handlers for event', () {
      var handler1Called = false;
      var handler2Called = false;

      void handler1(data) => handler1Called = true;
      void handler2(data) => handler2Called = true;

      controller.on(EmbedEvent.Data, handler1);
      controller.on(EmbedEvent.Data, handler2);

      controller.off(EmbedEvent.Data, handler1);
      controller.off(EmbedEvent.Data, handler2);

      onMessageReceived(TestHelper.createMessage('data', {}));

      expect(handler1Called, false);
      expect(handler2Called, false);
    });
  });
}
