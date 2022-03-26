import 'package:flutter/material.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../Model/ads_banner_helper.dart';

class nativeAds extends StatefulWidget {
  const nativeAds({Key? key}) : super(key: key);

  @override
  State<nativeAds> createState() => _nativeAdsState();
}

class _nativeAdsState extends State<nativeAds> {
  @override
  void initState() {
    // TODO: implement initState
    MobileAds.instance.initialize();
    AdHelper.myBanner.load();
    super.initState();
  }

  final AdWidget adWidget = AdWidget(ad: AdHelper.myBanner);
  

  @override
  Widget build(BuildContext context) {
    AdWidget adWidget = AdWidget(ad: AdHelper.myBanner);
    return  Container(
        height: 250,
        child: adWidget,
      );
    
  }
}
