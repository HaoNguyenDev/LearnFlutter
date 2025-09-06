import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/weather_app/home/widgets/weather_homepage.dart';
import 'package:provider/provider.dart';
import 'package:learnflutter/exercise/weather_app/provider/weather_provider.dart';


class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider (
      create: (_) => WeatherProvider(), 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherHomePage(),
      ),
    );
  }
}