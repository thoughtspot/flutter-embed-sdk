# ThoughtSpot Flutter Embed SDK

## Overview

The **ThoughtSpot Flutter Embed SDK** allows developers to seamlessly integrate ThoughtSpot's analytics and insights into Flutter applications.

## Installation

Add the following dependency to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_embed_sdk: ^0.0.0-alpha.0
```

Then, run:

```sh
flutter pub get
```

## Platform-Specific Configuration

Since this SDK uses WebView, platform-specific permissions are required for **Android** and **iOS**.

### Android Setup

Modify `android/app/src/main/AndroidManifest.xml` to enable Internet access:

```xml
<manifest>
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
```

### iOS Setup

Modify `ios/Runner/Info.plist` to allow WebView content loading:

```xml
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```

## Usage

Here's how to embed ThoughtSpot using the SDK. The `LiveboardController` provides programmatic control over the embedded ThoughtSpot content, allowing you to handle events and manage the embedded view:

```dart
import 'package:flutter/material.dart';
import 'package:thoughtspot_flutter_embed/thoughtspot_flutter_embed.dart';

class GetAuthToken extends EmbedConfigGetAuthToken {
  @override
  Future<String> operate() async {
    return '<YOUR_AUTH_TOKEN>';
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late LiveboardController liveboardEmbedController;
  late EmbedConfig embedConfig;
  late LiveboardViewConfig liveboardViewConfig;

  @override
  void initState() {
    super.initState();

    // Configure the authentication and connection settings
    embedConfig = EmbedConfig(
      authType: AuthType.TrustedAuthTokenCookieless,
      thoughtSpotHost: '<YOUR_THOUGHTSPOT_HOST_URL>', // e.g., 'https://your-instance.thoughtspot.cloud'
      getAuthToken: GetAuthToken(),
    );

    // Configure the liveboard view settings
    liveboardViewConfig = LiveboardViewConfig(
      liveboardId: '<YOUR_LIVEBOARD_ID>', // e.g., 'aa435ee8-212a-4317-8be8-ee85b4b6cfb9'
      customizations: CustomisationsInterface(
        style: CustomStyles(
          customCSS: customCssInterface(
            variables: {
              "--ts-var-root-background": "#f6f641",
              "--ts-var-root-color": "#041a45",
              "--ts-var-viz-background": "#38f193",
              "--ts-var-viz-border-radius": "20px",
            },
          ),
        ),
      ),
    );

    // Initialize the controller to manage the embedded view
    liveboardEmbedController = LiveboardController(
      embedConfig: embedConfig,
      viewConfig: liveboardViewConfig,
    );

    // Listen for events from the embedded view
    liveboardEmbedController.on(EmbedEvent.Data, (payload) {
      print('Data: ${payload['displayMode']}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: LiveboardEmbed(
              controller: liveboardEmbedController,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => liveboardEmbedController.trigger(HostEvent.Reload),
                child: const Text('Refresh'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => liveboardEmbedController.trigger(HostEvent.SetActiveTab, {
                  'tabId': '<YOUR_TAB_ID>', // Replace with your tab ID
                }),
                child: const Text('Set Active Tab'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
```

The `LiveboardController` provides several benefits:

- Event handling for embedded content interactions
- Programmatic control over the embedded view
- State management for the embedded content
- Ability to trigger actions on the embedded view

Make sure to replace the placeholder values:

- `<YOUR_AUTH_TOKEN>` with your actual authentication token
- `<YOUR_THOUGHTSPOT_HOST_URL>` with your ThoughtSpot instance URL
- `<YOUR_LIVEBOARD_ID>` with the ID of the liveboard you want to embed
- `<YOUR_TAB_ID>` with the ID of the tab you want to activate

This example demonstrates how to:

- Initialize the controller in a StatefulWidget
- Add interactive controls to manipulate the embedded view
- Style the container with a border and rounded corners
- Handle events from the embedded view

## License

This project is licensed under the **ThoughtSpot Development Tools End User License Agreement**.
