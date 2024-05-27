import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:parcial_movil/components/my_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key});

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  final page1Controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(
        "https://app.powerbi.com/view?r=eyJrIjoiNWY1NDcwNTctZGE2ZS00MzUwLWJmMjAtYzUzYzViMGMzYmNjIiwidCI6IjRkZDEzM2ZkLWNhMmEtNDA5OC1hZTkxLTBlYWEwYzU4MjNiOCIsImMiOjR9&pageName=2"));

  final page2Controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(
        "https://app.powerbi.com/view?r=eyJrIjoiNWY1NDcwNTctZGE2ZS00MzUwLWJmMjAtYzUzYzViMGMzYmNjIiwidCI6IjRkZDEzM2ZkLWNhMmEtNDA5OC1hZTkxLTBlYWEwYzU4MjNiOCIsImMiOjR9&pageName=2"));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            height: 270,
            child: WebViewWidget(
              controller: page1Controller,
            ),
          ),
          Container(
            height: 270,
            child: WebViewWidget(
              controller: page2Controller,
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}
