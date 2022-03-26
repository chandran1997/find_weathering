import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  // AdSize adSize = new AdSize(height: 50, width: 00);
  static BannerAd myBanner = BannerAd(
    // adUnitId: 'ca-app-pub-3940256099942544/6300978111',
    adUnitId: 'ca-app-pub-6978220746820492/6519369796',
    size: AdSize.mediumRectangle,
    request: AdRequest(),
    listener: BannerAdListener(),
  );
}
