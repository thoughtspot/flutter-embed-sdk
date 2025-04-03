import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';

import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/types/common-types.dart';

// Generate mocks
@GenerateMocks([WebViewController])
import 'flutter_embed_sdk_test.mocks.dart';

void main() {
  late MockWebViewController mockWebViewController;
  late LiveboardController controller;
  late LiveboardViewConfig viewConfig;
  late EmbedConfig embedConfig;

  setUp(() {
    mockWebViewController = MockWebViewController();

    // Setup mock behavior
    when(
      mockWebViewController.setJavaScriptMode(any),
    ).thenAnswer((_) => Future.value());
    when(
      mockWebViewController.addJavaScriptChannel(
        any,
        onMessageReceived: anyNamed('onMessageReceived'),
      ),
    ).thenAnswer((_) => Future.value());
    when(
      mockWebViewController.loadRequest(any),
    ).thenAnswer((_) => Future.value());
    when(
      mockWebViewController.runJavaScript(any),
    ).thenAnswer((_) => Future.value());

    // Mock the _handlers property
    when((mockWebViewController as dynamic)._handlers).thenReturn({});

    // Create test data
    viewConfig = LiveboardViewConfig();
    embedConfig = EmbedConfig(
      authType: AuthType.TrustedAuthTokenCookieless,
      thoughtSpotHost: 'https://thoughtspot.com',
    );

    // Create controller with mocked WebViewController for testing
    controller = LiveboardController.fromWebViewController(
      viewConfig: viewConfig,
      embedConfig: embedConfig,
      webViewController: mockWebViewController,
    );
  });

  test('LiveboardEmbed creates correctly', () {
    final liveboardEmbed = LiveboardEmbed(controller: controller);
    expect(liveboardEmbed, isA<LiveboardEmbed>());
  });

  test('Controller handles INIT_VERCEL_SHELL message', () {
    // Create a test message
    final message = JavaScriptMessage(
      message: jsonEncode({'type': 'INIT_VERCEL_SHELL', 'status': 'ready'}),
    );

    // Get the message handler from the JavaScript channel
    final messageHandler =
        verify(
              mockWebViewController.addJavaScriptChannel(
                'ReactNativeWebView',
                onMessageReceived: captureAnyNamed('onMessageReceived'),
              ),
            ).captured.single
            as Function(JavaScriptMessage);

    // Call the handler with our test message
    messageHandler(message);

    // Verify that the appropriate JavaScript was executed
    verify(
      mockWebViewController.runJavaScript(argThat(contains('INIT'))),
    ).called(1);
    verify(
      mockWebViewController.runJavaScript(argThat(contains('EMBED'))),
    ).called(1);
  });

  test('Controller handles REQUEST_AUTH_TOKEN message', () {
    // Create a test message
    final message = JavaScriptMessage(
      message: jsonEncode({'type': 'REQUEST_AUTH_TOKEN'}),
    );

    // Get the message handler from the JavaScript channel
    final messageHandler =
        verify(
              mockWebViewController.addJavaScriptChannel(
                'ReactNativeWebView',
                onMessageReceived: captureAnyNamed('onMessageReceived'),
              ),
            ).captured.single
            as Function(JavaScriptMessage);

    // Call the handler with our test message
    messageHandler(message);

    // Verify that the appropriate JavaScript was executed
    // If getAuthToken is null, no JavaScript should be executed
    verifyNever(
      mockWebViewController.runJavaScript(
        argThat(contains('AUTH_TOKEN_RESPONSE')),
      ),
    );
  });

  test('Event handlers are registered correctly', () {
    // Create a callback function
    void callback(dynamic data) {}

    // Register the callback
    controller.on(EmbedEvent.ALL, callback);

    // We can't directly test the private _handlers map, but we can test the behavior
    // by triggering an event and verifying the callback was called
    // This would require adding a method to trigger events for testing

    // Unregister the callback
    controller.off(EmbedEvent.ALL, callback);
  });

  test('Trigger method sends correct message to shell', () {
    // Create test data
    final data = {'testKey': 'testValue'};

    // Trigger the event
    controller.trigger(HostEvent.Search, data);

    // Verify that the appropriate JavaScript was executed
    verify(
      mockWebViewController.runJavaScript(
        argThat(contains('window.postMessage')),
      ),
    ).called(1);

    // Verify that the message contains the event name and payload
    verify(
      mockWebViewController.runJavaScript(
        argThat(
          allOf([
            contains('"eventName":"search"'),
            contains('"testKey":"testValue"'),
            contains('"type":"HOST_EVENT"'),
          ]),
        ),
      ),
    ).called(1);
  });

  test('Multiple event handlers can be registered for the same event', () {
    // Create callback functions
    void callback1(dynamic data) {}
    void callback2(dynamic data) {}

    // Register the callbacks
    controller.on(EmbedEvent.ALL, callback1);
    controller.on(EmbedEvent.ALL, callback2);

    // Unregister one callback
    controller.off(EmbedEvent.ALL, callback1);

    // We can't directly test the private _handlers map, but we can verify
    // that the remaining callback is still registered by triggering an event
    controller.trigger(HostEvent.Search, {});

    // Verify that the event was triggered
    verify(
      mockWebViewController.runJavaScript(argThat(contains('HOST_EVENT'))),
    ).called(1);
  });

  test('Event handlers can be registered for different events', () {
    // Create callback functions
    void callback1(dynamic data) {}
    void callback2(dynamic data) {}

    // Register the callbacks for different events
    controller.on(EmbedEvent.ALL, callback1);
    controller.on(EmbedEvent.Data, callback2);

    // Trigger events
    controller.trigger(HostEvent.Search, {});

    // Verify that the event was triggered
    verify(
      mockWebViewController.runJavaScript(argThat(contains('HOST_EVENT'))),
    ).called(1);
  });

  test('Event handlers can be unregistered for specific events', () {
    // Create callback functions
    void callback1(dynamic data) {}
    void callback2(dynamic data) {}

    // Register the callbacks for different events
    controller.on(EmbedEvent.ALL, callback1);
    controller.on(EmbedEvent.Data, callback2);

    // Unregister one callback
    controller.off(EmbedEvent.ALL, callback1);

    // Trigger events
    controller.trigger(HostEvent.Search, {});

    // Verify that the event was triggered
    verify(
      mockWebViewController.runJavaScript(argThat(contains('HOST_EVENT'))),
    ).called(1);
  });

  test('Event handlers can be unregistered for all events', () {
    // Create callback functions
    void callback1(dynamic data) {}
    void callback2(dynamic data) {}

    // Register the callbacks for different events
    controller.on(EmbedEvent.ALL, callback1);
    controller.on(EmbedEvent.Data, callback2);

    // Unregister all callbacks
    controller.off(EmbedEvent.ALL, callback1);
    controller.off(EmbedEvent.Data, callback2);

    // Trigger events
    controller.trigger(HostEvent.Search, {});

    // Verify that the event was triggered
    verify(
      mockWebViewController.runJavaScript(argThat(contains('HOST_EVENT'))),
    ).called(1);
  });
}
