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
Here’s how to embed ThoughtSpot using the SDK:

```dart
import 'package:flutter/material.dart';
import 'package:thoughtspot_flutter_embed/thoughtspot_flutter_embed.dart';

class GetAuthToken extends EmbedConfigGetAuthToken {
  @override
  Future<String> operate() async {
    return '<YOUR_AUTH_TOKEN>';
  }
}

class ThoughtSpotEmbedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EmbedConfig embedConfig = EmbedConfig(
      authType: AuthType.TrustedAuthTokenCookieless,
      thoughtSpotHost: '<YOUR_THOUGHTSPOT_HOST>',
      getAuthToken: GetAuthToken(),
    );

    LiveboardViewConfig liveboardViewConfig = LiveboardViewConfig(
      liveboardId: 'bea79810-145f-4ad0-a02c-4177a6e7d861',
      customizations: CustomisationsInterface(
        style: CustomStyles(
          customCSS: customCssInterface(
            variables: {
              "--ts-var-root-background": "#e76262",
              "--ts-var-root-color": "#021e76",
              "--ts-var-viz-background": "#d3f6ae",
            },
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ThoughtSpot Embed"),
      ),
      body: LiveboardEmbed(
        embedConfig: embedConfig,
        viewConfig: liveboardViewConfig,
      ),
    );
  }
}
```

## License
This project is licensed under the **ThoughtSpot Development Tools End User License Agreement**.

