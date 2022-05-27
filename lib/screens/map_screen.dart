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
        title: const Text(
          'صور الأقمار الاصطناعية',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        centerTitle: false,
        backgroundColor: const Color(0xff426981),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      endDrawer: const AppDrawer(),
      body: const WebView(
        debuggingEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl:
            'https://www.meteoblue.com/ar/weather/maps/widget/oman?windAnimation=1#coords=4.33/25.78/53.29&map=windAnimation~rainbow~auto~10%20m%20above%20gnd~none',
      ),
    );
  }
}
