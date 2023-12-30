import 'dart:core';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
   final String url;
   WebViewScreen(this.url, {Key? key}) : super(key: key);
   WebViewController? controller;
  @override
  Widget build(BuildContext context) {
    webView();
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: controller!,
      ),
    );
  }

  void webView(){
    controller=WebViewController()..loadRequest(Uri.parse(url))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }
}
