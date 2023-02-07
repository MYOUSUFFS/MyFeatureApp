// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WhatsappWeb extends StatefulWidget {
  const WhatsappWeb({super.key});

  @override
  State<WhatsappWeb> createState() => _WhatsappWebState();
}

final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://web.whatsapp.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://myousuffs.blogspot.com/'));

class _WhatsappWebState extends State<WhatsappWeb> {
  @override
  void initState() {
    super.initState();
    // if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("data")
        // WebviewScaffold(
        //   url: 'https://web.whatsapp.com/',
        //   withZoom: true,
        //   withLocalStorage: true,
        //   withJavascript: true,
        //   userAgent:
        //       'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko Chrome/90.0.4324.150 Safari/537.36',
        // ),
      ),
    );
  }
}
