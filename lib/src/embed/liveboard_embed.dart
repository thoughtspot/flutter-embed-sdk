part of 'base_embed.dart';

class LiveboardController extends BaseController {
  final LiveboardViewConfig viewConfig;

  LiveboardController({required this.viewConfig, required super.embedConfig});

  // Constructor for testing purposes
  @visibleForTesting
  LiveboardController.fromWebViewController({
    required this.viewConfig,
    required super.embedConfig,
    super.webViewController,
  }) : super.fromWebViewController();

  @override
  String _getEmbedType() {
    return EmbedType.LiveboardEmbed.value;
  }

  @override
  Map<String, dynamic> _getViewConfigAsJson() {
    return viewConfig.toJson();
  }
}

class LiveboardEmbed extends BaseEmbed<LiveboardController> {
  const LiveboardEmbed({super.key, required super.controller});
}
