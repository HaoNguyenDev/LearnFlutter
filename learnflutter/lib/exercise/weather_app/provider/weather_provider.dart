import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/weather_app/models/weather_result.dart';
import 'package:learnflutter/exercise/weather_app/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherDataResult> getCurrentWeather() async {
   debugPrint('Get current weather'); 
   WeatherDataResult weatherDataResult = await ApiRepository.getCurrentWeatherApi();
   return weatherDataResult;
  }
}