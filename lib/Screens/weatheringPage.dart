import 'package:find_weathering/Model/http_helper.dart';
import 'package:flutter/material.dart';

import '../Ads/native_Ads.dart';
import '../Model/weatherJsonDetails.dart';
import '../Shared/animation_lottie_cloud.dart';
import '../Shared/weatherDetails.dart';

class WeatheringPage extends StatefulWidget {
  const WeatheringPage({Key? key}) : super(key: key);

  @override
  State<WeatheringPage> createState() => _WeatheringPageState();
}

class _WeatheringPageState extends State<WeatheringPage> {
  Future getWeatherData() async {
    httpHelper helper = httpHelper();
    result = await helper.getweather(_textEditingController.text);
    setState(() {});
  }

  // String result = '';
  late WeatherJsonDetails result = WeatherJsonDetails(
    '',
    '',
    0,
    0,
    0,
    0,
  );
  String image = 'assets/mountains.svg';

  //controller
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mount.png'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: GestureDetector(
              onTap: (() {
                FocusScope.of(context).unfocus();
              }),
              child: Stack(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: lottiAnimation(),
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      // ElevatedButton(
                      //   onPressed: getWeatherData,
                      //   child: const Text('getData'),
                      // ),

                      // Text(result.pressure.toStringAsFixed(2)),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 45,
                            child: TextField(
                              controller: _textEditingController,
                              decoration: InputDecoration(
                                hoverColor: Colors.blue.shade100,
                                // helperText: 'Search the city',
                                // labelText: 'Search The City',

                                hintText: 'Search The City',
                                hintStyle: const TextStyle(
                                    color: Color(0XFF462A1E), fontSize: 14),
                                // helperStyle: TextStyle(
                                //     color: Color(0xFFF9FCFC), fontSize: 12),

                                suffixIcon: IconButton(
                                  onPressed: () {
                                    getWeatherData();
                                  },
                                  icon: const Icon(
                                    Icons.search,
                                    color: Color(0XFF462A1E),
                                    size: 20,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF9FCFC),

                                // labelText: 'Hello',
                                // floatingLabelBehavior: FloatingLabelBehavior.never,

                                // //border outline input
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFF9FCFC),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFF9FCFC),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 750,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                FittedBox(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(30),
                                      color: Color(0XFF462A1E),
                                    ),
                                    child: const Text(
                                      'Weather Details',
                                      style: TextStyle(
                                          color: Color(0XFFF9FCFC),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.flag,
                                    color: Color(0XFFF9FCFC),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            WeatherDetails(
                                title: 'Name',
                                details: result.name,
                                image: 'assets/city.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            WeatherDetails(
                                title: 'Discription',
                                details: result.discription,
                                image: 'assets/cloudy.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            WeatherDetails(
                                title: 'Pressure',
                                details: result.pressure.toString(),
                                image: 'assets/wind.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            WeatherDetails(
                                title: 'Temperature',
                                details: result.temperature.toStringAsFixed(2),
                                image: 'assets/plant.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            WeatherDetails(
                                title: 'Preceived',
                                details: result.perceived.toStringAsFixed(2),
                                image: 'assets/wind-turbine.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            WeatherDetails(
                                title: 'Humidity',
                                details: result.humidity.toString(),
                                image: 'assets/humidity.png'),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      nativeAds(),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
