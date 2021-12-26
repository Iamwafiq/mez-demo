import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext ctxt) {
    return WebView(
       initialUrl: 'https://mez.ink/aatif',
       javascriptMode: JavascriptMode.unrestricted,
     );
  }
}