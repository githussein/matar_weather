import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/app_drawer.dart';

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
        title: const Text('التوقعات ومتابعة الحالات'),
        centerTitle: false,
        backgroundColor: const Color(0xff426981),
      ),
      drawer: AppDrawer(),
      body: const WebView(
        debuggingEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://satellites.pro/Oman_map#23.553917,56.337891,6',
      ),
    );

  }
}
