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

    controller = TestHelper.setupController(
      webViewController: mockWebViewController,
    );
  });

  test('handles INIT_VERCEL_SHELL message correctly', () {
    onMessageReceived(TestHelper.createMessage('init', {}));

    verify(
      mockWebViewController.runJavaScript(argThat(contains('INIT'))),
    ).called(1);
  });

  test('handles EMBED_READY message correctly', () {
    onMessageReceived(TestHelper.createMessage('ready', {}));

    verify(
      mockWebViewController.runJavaScript(argThat(contains('EMBED'))),
    ).called(1);
  });

  test('handles EMBED_ERROR message correctly', () {
    onMessageReceived(TestHelper.createMessage('error', {}));

    verify(
      mockWebViewController.runJavaScript(argThat(contains('ERROR'))),
    ).called(1);
  });

  test('handles unknown message type gracefully', () {
    expect(
      () => onMessageReceived(TestHelper.createMessage('unknown', {})),
      returnsNormally,
    );
  });
}
