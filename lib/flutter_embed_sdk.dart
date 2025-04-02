import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_embed_sdk/src/types.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';
export 'package:flutter_embed_sdk/src/types.dart';

abstract class BaseEmbed extends StatefulWidget {
  final EmbedConfig embedConfig;
  final String url = 'https://mobile-embed-shell.vercel.app';

  @override
  State<StatefulWidget> createState() => _BaseEmbedState();

  const BaseEmbed({super.key, required this.embedConfig});

  String getEmbedType();
  String getViewConfigAsJsonString();
  String getEmbedConfigAsJsonString() {
    Map<String, dynamic> embedConfigMap = embedConfig.toJson();

    // remove this from shell first
    embedConfigMap['getTokenFromSDK'] = true;
    return jsonEncode(embedConfigMap);
  }
}

class _BaseEmbedState extends State<BaseEmbed> {
  late WebViewController webviewController;

  @override
  void initState() {

    super.initState();

    webviewController =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..addJavaScriptChannel(
            'ReactNativeWebView',
            onMessageReceived: (JavaScriptMessage message) {
              print(message.message);
              Map<String, dynamic> jsonObject = jsonDecode(message.message);

              String embedConfigAsString = widget.getEmbedConfigAsJsonString();
              String viewConfigAsString = widget.getViewConfigAsJsonString();
              String embedType = widget.getEmbedType();
              if (jsonObject['type'] == 'INIT_VERCEL_SHELL' &&
                  jsonObject['status'] == 'ready') {
                webviewController.runJavaScript(
                  'window.postMessage({payload: $embedConfigAsString, type: "INIT" }, "*");',
                );

                webviewController.runJavaScript(
                  'window.postMessage({ embedType: "$embedType", viewConfig: $viewConfigAsString, type: "EMBED" }, "*");',
                );
              } else if (jsonObject['type'] == 'REQUEST_AUTH_TOKEN') {
                if (widget.embedConfig.getAuthToken != null) {
                  widget.embedConfig.getAuthToken?.operate().then((token) {
                    print('Token: $token');
                    webviewController.runJavaScript(
                      'window.postMessage({ token: "$token" , type: "AUTH_TOKEN_RESPONSE" }, "*");',
                    );
                  });
                } else {
                  print('No auth token found');
                }
              }
            },
          )
          ..loadRequest(Uri.parse('https://mobile-embed-shell.vercel.app'));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: webviewController);
  }
}

class LiveboardEmbed extends BaseEmbed {
  final LiveboardViewConfig viewConfig;

  const LiveboardEmbed({
    super.key,
    required super.embedConfig,
    required this.viewConfig,
  });

  @override
  String getEmbedType() {
    return 'Liveboard';
  }

  @override
  String getViewConfigAsJsonString() {
    return jsonEncode(viewConfig.toJson());
  }
}
