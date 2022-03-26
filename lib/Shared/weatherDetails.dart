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
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.95),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: kheading,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  '-->    ${details}',
                  style: TextStyle(color: kheading),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
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
