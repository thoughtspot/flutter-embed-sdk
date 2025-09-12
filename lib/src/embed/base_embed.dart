library;

import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

import 'package:flutter_embed_sdk/flutter_embed_sdk.dart';
import 'package:flutter_embed_sdk/src/types/common-types.dart';
import 'package:flutter_embed_sdk/src/utils/utils.dart';
import 'package:flutter_embed_sdk/src/utils/logger.dart';

part './liveboard_embed.dart';

abstract class BaseController {
  final EmbedConfig embedConfig;
  final String _defaultMobileShellUrl = 'https://mobile-embed-shell.vercel.app';
  final Logger _logger = Logger();

  late final WebViewController _webViewController;

  final Map<String, List<Function(dynamic)>> _handlers = {};

  BaseController({required this.embedConfig}) {
    _logger.setLogLevel(embedConfig.logLevel ?? LogLevel.ERROR);
    _logger.debug('Initializing BaseController');
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

  bool _isShellDebugMode() {
    return embedConfig.additionalFlags?['shell_debug_mode'] ?? false;
  }

  String _getMobileShellUrl() {
    if (_isShellDebugMode()) {
      String shellDebugFlags =
          embedConfig.additionalFlags?['shell_debug_flags']?.toString() ?? '';

      String mobileShellUrl =
          embedConfig.additionalFlags?['mobile_shell_url'] ??
              _defaultMobileShellUrl;

      String finalUrl = mobileShellUrl;

      if (shellDebugFlags.isNotEmpty) {
        finalUrl += '?$shellDebugFlags';
      }

      _logger.info('mobileShellUrl: $finalUrl');
      return finalUrl;
    }
    return _defaultMobileShellUrl;
  }

  WebViewController _setWebViewController(WebViewController controller) {
    final mobileShellUrl = _getMobileShellUrl();
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'ReactNativeWebView',
        onMessageReceived: _handleMessage,
      )
      ..loadRequest(Uri.parse(mobileShellUrl));
    return controller;
  }

  void _sendJsonMessageToShell(Map<String, dynamic> message) {
    _logger.debug('Sending message to shell: ${jsonEncode(message)}');
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
    try {
      Map<String, dynamic> jsonObject = jsonDecode(message.message);
      _logger.debug('Received message: $jsonObject');

      // Handle missing message type
      if (!jsonObject.containsKey('type')) {
        _logger.warn('Received message without type field');
        return;
      }

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
    } catch (e, stackTrace) {
      // Handle JSON parsing errors and other exceptions gracefully
      _logger.errorDebug('Error handling message', e, stackTrace);
    }
  }

  void _handleEmbedEvent(Map<String, dynamic> message) {
    try {
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
    } catch (e, stackTrace) {
      _logger.errorDebug('Error handling embed event', e, stackTrace);
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
    dynamic? data,
  ]) async {
    _logger.error("message");
    _logger.debug('Triggering event: $event');
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
