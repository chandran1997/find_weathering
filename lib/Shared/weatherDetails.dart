import 'package:flutter/material.dart';

import '../styles/constants.dart';

class WeatherDetails extends StatelessWidget {
  String title = '';
  String details = '';
  String image = '';
  WeatherDetails({
    Key? key,
    required this.title,
    required this.details,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.23),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  details,
                  style: TextStyle(color: kcountry),
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
