import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class PredictionsScreen extends StatefulWidget {
  const PredictionsScreen({Key? key}) : super(key: key);

  @override
  State<PredictionsScreen> createState() => _PredictionsScreenState();
}

class _PredictionsScreenState extends State<PredictionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صور الأقمار الاصطناعية'),
        centerTitle: false,
        backgroundColor: const Color(0xff426981),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          children: const [
            Image(image: NetworkImage('https://cdn.images.express.co.uk/img/dynamic/78/590x/Cyclone-Hikaa-path-1181787.jpg?r=1569271511914')),
            SizedBox(height: 20),
            Text('توقعات بطقس جميل منعش'),
          ],
        ),
      ),
    );
  }
}
