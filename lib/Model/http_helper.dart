import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'weatherJsonDetails.dart';

//https://api.openweathermap.org/data/2.5/weather?q=london&appid=4a164f220b1d6423bcaad2565368e9f7

class httpHelper {
  String apiKey = '4a164f220b1d6423bcaad2565368e9f7';
  String authority = 'api.openweathermap.org';
  String path = 'data/2.5/weather';

  Future<WeatherJsonDetails> getweather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);

    Map<String, dynamic> data = json.decode(result.body);
    WeatherJsonDetails weatherJsonDetails = WeatherJsonDetails.fronJson(data);
    return weatherJsonDetails;
  }
}
