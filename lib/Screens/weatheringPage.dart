import 'package:find_weathering/Model/http_helper.dart';
import 'package:flutter/material.dart';

import '../Model/weatherJsonDetails.dart';
import '../Shared/weatherDetails.dart';
import '../styles/constants.dart';

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
  WeatherJsonDetails result = WeatherJsonDetails('', 0);
  String image = 'assets/mountains.svg';

  //controller
  TextEditingController _textEditingController = TextEditingController();
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
              child: SingleChildScrollView(
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
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            fillColor: kcountry,
                            focusColor: Colors.grey,

                            // labelText: 'Hello',
                            // floatingLabelBehavior: FloatingLabelBehavior.never,

                            // //border outline input
                            // enabledBorder: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(10),
                            //     borderSide: BorderSide.none),
                            // focusedBorder: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(30),
                            //     borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: EdgeInsets.only(top: 20),
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     height: 40,
                    //     decoration: BoxDecoration(
                    //       color: Colors.blueGrey,
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //     child: Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 20),
                    //       child: Row(
                    //         children: const [
                    //           Icon(
                    //             Icons.search,
                    //             color: Colors.white,
                    //           ),
                    //           Align(
                    //             alignment: Alignment.centerLeft,
                    //             child: Text(
                    //               'Search the Country',
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontWeight: FontWeight.w600),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 180,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 700,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Country : Name',
                                style: TextStyle(
                                    color: kcountry,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1),
                              ),
                              Spacer(),
                              Icon(
                                Icons.flag,
                                color: kcountry,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          WeatherDetails(
                              title: 'Temperature',
                              details: result.name,
                              image: 'assets/cloudy.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          WeatherDetails(
                              title: 'Temperature',
                              details: result.name,
                              image: 'assets/cloudy.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          WeatherDetails(
                              title: 'Temperature',
                              details: result.pressure.toStringAsFixed(2),
                              image: 'assets/cloudy.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          WeatherDetails(
                              title: 'Temperature',
                              details: result.pressure.toStringAsFixed(2),
                              image: 'assets/cloudy.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          WeatherDetails(
                              title: 'Temperature',
                              details: result.pressure.toStringAsFixed(2),
                              image: 'assets/cloudy.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          WeatherDetails(
                              title: 'Temperature',
                              details: result.pressure.toStringAsFixed(2),
                              image: 'assets/cloudy.png'),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
