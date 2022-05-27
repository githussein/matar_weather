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
        title: const Text(
          'التوقعات ومتابعة الحالات',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        centerTitle: false,
        backgroundColor: const Color(0xff426981),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                 Image(
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.35,
                    image: const NetworkImage(
                        'https://cdn.images.express.co.uk/img/dynamic/78/590x/Cyclone-Hikaa-path-1181787.jpg?r=1569271511914')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        child: const Text('سلطنة عمان',
                            style: TextStyle(fontSize: 22)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(horizontal: 40)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xff426981)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              // side: BorderSide(color: Colors.red),
                            ))),
                        onPressed: () {}),
                    ElevatedButton(
                        child: const Text('اختيار موقع آخر',
                            style: TextStyle(fontSize: 22)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(horizontal: 20)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff426981)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFFEF9F9)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              // side: BorderSide(color: Colors.red),
                            ))),
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
            Container(
              height: 60,
              color: const Color(0xff426981),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icon/time.png',
                                width: 12, color: Colors.white)),
                        const Text(
                          '7:55 - 2022.04.27',
                          style: TextStyle(color: Color(0xFFFEF9F9), fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(width: 1, color: const Color(0xFFFEF9F9)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.49,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icon/heart.png',
                                color: Colors.white)),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icon/comment.png',
                                color: Colors.white)),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/icon/share2.png',
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(12),
                  child: const SingleChildScrollView(
                    child: Text(
                      'سيكون طقس الاثنين صحوًا بوجه عام على معظم المحافظات مع احتمال تشكل سحب على جبال الحجر خلال المساء، وفرص تشكل المنخفضة أو الضباب في آخر الليل والصباح الباكر على أجزاء من محافظات جنوب شرقية والوسطى. وتهب على سواحل بحر عمان رياح شرقية إلى شمالية شرقية خفيفة إلى عتدلة خلال النهار تتحول إلى شمالية غربية خفيفة ليلا سيكون طقس الاثنين صحوًا بوجه عام على معظم المحافظات مع احتمال تشكل السحب على جبال الحجر خلال المساء، وفرص تشكل المنخفضة أو الضباب في آخر الليل والصباح الباكر على أجزاء من محافظات جنوب الشرقية والوسطى. وتهب على سواحل بحر عمان رياح شرقية إلى شمالية شرقية خفيفة إلى معتدلة خلال النهار تتحول إلى شمالية غربية خفيفة ليلا',
                      style: TextStyle(fontSize: 22),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
