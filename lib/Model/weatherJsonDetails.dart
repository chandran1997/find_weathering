import 'package:flutter/material.dart';

// {
//   "coord": {
//     "lon": -122.08,
//     "lat": 37.39
//   },
//   "weather": [
//     {
//       "id": 800,
//       "main": "Clear",
//       "description": "clear sky",
//       "icon": "01d"
//     }
//   ],
//   "base": "stations",
//   "main": {
//     "temp": 282.55,
//     "feels_like": 281.86,
//     "temp_min": 280.37,
//     "temp_max": 284.26,
//     "pressure": 1023,
//     "humidity": 100
//   },
//   "visibility": 10000,
//   "wind": {
//     "speed": 1.5,
//     "deg": 350
//   },
//   "clouds": {
//     "all": 1
//   },
//   "dt": 1560350645,
//   "sys": {
//     "type": 1,
//     "id": 5122,
//     "message": 0.0139,
//     "country": "US",
//     "sunrise": 1560343627,
//     "sunset": 1560396563
//   },
//   "timezone": -25200,
//   "id": 420006353,
//   "name": "Mountain View",
//   "cod": 200
//   }

class WeatherJsonDetails {
  String name = '';
  String discription = '';
  int pressure = 0;

  double temperature = 0; //temp
  double perceived = 0; // feels_like
  int humidity = 0; //humidity

  // int windSpeed = 0; //speed
  // int winddegree = 0; //deg

  WeatherJsonDetails(
    this.name,
    this.discription,
    this.pressure,
    this.temperature,
    this.perceived,
    this.humidity,
    // this.windSpeed,
    // this.winddegree,
  );

  WeatherJsonDetails.fronJson(Map<String, dynamic> WeatherMap) {
    name = WeatherMap['name'] ?? '';

    //weather details
    discription = WeatherMap['weather'][0]['main'] ?? '';
    pressure = WeatherMap['main']['pressure'] ?? 0;
    temperature = WeatherMap['main']['temp'] - 273.15 ?? 0;
    perceived = WeatherMap['main']['feels_like'] - 273.15 ?? 0;
    humidity = WeatherMap['main']['humidity'] ?? 0;
    // windSpeed = WeatherMap['wind']['speed'] ?? 0;
    // winddegree = WeatherMap['wind']['deg'] ?? 0;
  }
}
