import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../screens/settings.dart';
import '../services/ad_helper.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  // late BannerAd _bannerAd;
  // bool _isBannerAdReady = false;
  //
  // InterstitialAd? _interstitialAd;
  // bool _isInterstitialAdReady = false;
  //
  // void _loadInterstitialAd() {
  //   InterstitialAd.load(
  //     adUnitId: AdHelper.interstitialAdUnitId,
  //     request: AdRequest(),
  //     adLoadCallback: InterstitialAdLoadCallback(
  //       onAdLoaded: (ad) {
  //         this._interstitialAd = ad;
  //
  //         ad.fullScreenContentCallback = FullScreenContentCallback(
  //           onAdDismissedFullScreenContent: (ad) {
  //           },
  //         );
  //
  //         _isInterstitialAdReady = true;
  //       },
  //       onAdFailedToLoad: (err) {
  //         print('Failed to load an interstitial ad: ${err.message}');
  //         _isInterstitialAdReady = false;
  //       },
  //     ),
  //   );
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  // }

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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          // if (index == 1) {
          //   print(index);
          //   _loadInterstitialAd();
          // }
          //
          // if (index == 3) {
          //   print(index);
          // _interstitialAd?.show();
          // }
          //
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
                ),
                // if (_isBannerAdReady)
                //   Align(
                //     alignment: Alignment.topCenter,
                //     child: SizedBox(
                //       width: _bannerAd.size.width.toDouble(),
                //       height: _bannerAd.size.height.toDouble(),
                //       child: AdWidget(ad: _bannerAd),
                //     ),
                //   ),
              ],
            )),
          );
        },
      ),
    );
  }
}
