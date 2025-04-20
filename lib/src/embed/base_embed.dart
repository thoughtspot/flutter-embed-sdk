library;

import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/types/common-types.dart';
import 'package:flutter_embed_sdk/src/utils.dart';

part './liveboard_embed.dart';

abstract class BaseController {
  final EmbedConfig embedConfig;
  final String _url = 'https://mobile-embed-shell.vercel.app';

  late final WebViewController _webViewController;

  final Map<String, List<Function(dynamic)>> _handlers = {};

  BaseController({required this.embedConfig}) {
    _webViewController = _setWebViewController(WebViewController());
  }

  // constructor for testing purposes
  @visibleForTesting
  BaseController.fromWebViewController({
    required this.embedConfig,
    WebViewController? webViewController,
  }) {
    _webViewController = _setWebViewController(
      webViewController ?? WebViewController(),
    );
  }

  WebViewController _setWebViewController(WebViewController controller) {
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'ReactNativeWebView',
        onMessageReceived: _handleMessage,
      )
      ..loadRequest(Uri.parse(_url));
    return controller;
  }

  void _sendJsonMessageToShell(Map<String, dynamic> message) {
    _webViewController.runJavaScript(
      'window.postMessage(${jsonEncode(message)}, "*");',
    );
  }

  void _handleInit(Map<String, dynamic> message) {
    if (message['status'] != 'ready') {
      return;
    }

    _sendJsonMessageToShell({
      'payload': _getEmbedConfigAsJson(),
      'type': OutgoingShellMessageType.INIT.value,
    });

    _sendJsonMessageToShell({
      'embedType': _getEmbedType(),
      'viewConfig': _getViewConfigAsJson(),
      'type': OutgoingShellMessageType.EMBED.value,
    });
  }

  void _handleRequestAuthToken(Map<String, dynamic> message) {
    if (embedConfig.getAuthToken != null) {
      embedConfig.getAuthToken?.operate().then((token) {
        _sendJsonMessageToShell({
          'token': token,
          'type': OutgoingShellMessageType.AUTH_TOKEN_RESPONSE.value,
        });
      });
    }
  }

  void _handleMessage(JavaScriptMessage message) {
    Map<String, dynamic> jsonObject = jsonDecode(message.message);

    String messageType = jsonObject['type'];

    // Cant use switch case because dart does'nt allow to use enum.value in switch case
    if (messageType == IncomingShellMessageType.INIT_VERCEL_SHELL.value) {
      _handleInit(jsonObject);
    } else if (messageType ==
        IncomingShellMessageType.REQUEST_AUTH_TOKEN.value) {
      _handleRequestAuthToken(jsonObject);
    } else if (messageType == IncomingShellMessageType.EMBED_EVENT.value) {
      _handleEmbedEvent(jsonObject);
    }
  }

  void _handleEmbedEvent(Map<String, dynamic> message) {
    final eventName = message['eventName'];
    final payload = message['data'];

    // For responding
    final eventId = message['eventId'];
    final hasResponder = message['hasResponder'];

    final handlers = _handlers[eventName];

    if (handlers != null) {
      for (var handler in handlers.toList()) {
        handler(payload);
      }
    }
  }

  void on(EmbedEvent event, Function(dynamic) callback) {
    _handlers[event.value] ??= [];
    _handlers[event.value]?.add(callback);
  }

  void off(EmbedEvent event, Function(dynamic) callback) {
    _handlers[event.value]?.remove(callback);
    if (_handlers[event.value]?.isEmpty ?? false) {
      _handlers.remove(event.value);
    }
  }

  String _getEmbedType();
  Map<String, dynamic> _getViewConfigAsJson();
  Map<String, dynamic> _getEmbedConfigAsJson() {
    Map<String, dynamic> embedConfigMap = embedConfig.toJson();
    embedConfigMap['getTokenFromSDK'] = true;
    return embedConfigMap;
  }

  Future<Map<String, dynamic>> trigger(
    HostEvent event, [
    Map<String, dynamic>? data,
  ]) async {
    String eventId = getUniqueId();
    Map<String, dynamic> embedEventPayload = {
      'eventName': event.value,
      'payload': data ?? {},
      'eventId': eventId,
      'type': OutgoingShellMessageType.HOST_EVENT.value,
    };

    _sendJsonMessageToShell(embedEventPayload);

    // TODO: Implement this
    return {};
  }
}

abstract class BaseEmbed<T extends BaseController> extends StatelessWidget {
  final T controller;
  const BaseEmbed({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller._webViewController);
  }
}
