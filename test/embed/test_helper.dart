import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/types/common-types.dart';
import 'package:flutter_embed_sdk/src/embed/base_embed.dart';
import 'package:flutter_embed_sdk/src/types/generated/types.dart';

// Generate mocks
@GenerateMocks([WebViewController])
import 'test_helper.mocks.dart';

class TestAuthToken extends EmbedConfigGetAuthToken {
  @override
  Future<String> operate() async {
    return 'test-token';
  }
}

class TestHelper {
  static JavaScriptMessage createMessage(
    String type,
    Map<String, dynamic> data,
  ) {
    return JavaScriptMessage(
      message: jsonEncode({
        'type': IncomingShellMessageType.EMBED_EVENT.value,
        'eventName': type,
        'payload': data,
        'eventId': 'test-id',
      }),
    );
  }

  static LiveboardController setupController({
    required WebViewController webViewController,
  }) {
    // Mock the _handlers property
    when((webViewController as dynamic)._handlers).thenReturn({});

    // Create the controller
    final controller = LiveboardController.fromWebViewController(
      viewConfig: LiveboardViewConfig(liveboardId: 'test-liveboard'),
      embedConfig: EmbedConfig(
        authType: AuthType.None,
        thoughtSpotHost: 'https://thoughtspot.com',
        getAuthToken: TestAuthToken(),
      ),
      webViewController: webViewController,
    );

    return controller;
  }
}
