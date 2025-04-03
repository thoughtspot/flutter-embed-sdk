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

  test('LiveboardEmbed creates correctly', () {
    final liveboardEmbed = LiveboardEmbed(controller: controller);
    expect(liveboardEmbed, isA<LiveboardEmbed>());
  });

  test('Controller initializes with correct embed type', () {
    onMessageReceived(TestHelper.createMessage('init', {'status': 'ready'}));

    verify(
      mockWebViewController.runJavaScript(
        argThat(contains('"embedType":"liveboard"')),
      ),
    ).called(1);
  });

  test('Controller initializes with correct view config', () {
    onMessageReceived(TestHelper.createMessage('init', {'status': 'ready'}));

    verify(
      mockWebViewController.runJavaScript(
        argThat(contains('"liveboardId":"test-liveboard"')),
      ),
    ).called(1);
  });

  test('Controller initializes with correct embed config', () {
    onMessageReceived(TestHelper.createMessage('init', {'status': 'ready'}));

    verify(
      mockWebViewController.runJavaScript(
        argThat(contains('"thoughtSpotHost":"https://thoughtspot.com"')),
      ),
    ).called(1);
  });
}
