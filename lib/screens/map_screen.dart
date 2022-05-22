import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صور الأقمار الاصطناعية'),
        centerTitle: false,
        backgroundColor: const Color(0xff426981),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.menu))],
      ),
      body: const WebView(
        debuggingEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.google.com/maps/@22.0661,55.1960259,1207941m/data=!3m1!1e3!5m1!1e4',
      ),
    );
  }
}
