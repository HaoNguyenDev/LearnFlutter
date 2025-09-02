import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/weather_app/home/home_weather_icon.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Weather App')),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1D6CF3), Color(0x00ff19d2)],
          ),
        ),
        child: Column(
          children: [
           HomeWeatherIcon()
          ],
        ),
      ),
    );
  }
}
