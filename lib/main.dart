import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'Screens/weatheringPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset(
            'assets/appicons.png',
          ),
          // nextScreen: const WeatheringPage(),
          nextScreen: WeatheringPage(),
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: const Color(0XFFFBDD8B),
        ));
  }
}
