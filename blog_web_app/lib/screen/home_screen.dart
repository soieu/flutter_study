import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()

  ..loadRequest(Uri.parse('https://www.naver.com/'))

  ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({Key? key}) : super(key: key); // 왜 const 제거?

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {
              webViewController.loadRequest(Uri.parse('https://www.naver.com/'));
            },
            icon: Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              webViewController.goBack();
          },
            icon: Icon(
              Icons.back_hand,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: webViewController,
      )
    );
  }
}