import 'package:flutter/material.dart';
import 'package:matar_weather/widgets/app_drawer.dart';
import '../widgets/app_drawer.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text(
          'صور صور ومقاطع الطقس',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: AppDrawer(),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://picsum.photos/id/${index + 1047}/800/1080'),
                )),
            child: Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          begin: Alignment(0, -0.5),
                          end: Alignment(0, -2),
                        ),
                      ),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
