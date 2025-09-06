import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:learnflutter/exercise/weather_app/models/weather_result.dart';
import 'package:learnflutter/exercise/weather_app/utils/asset.dart';

class ApiRepository {
  static Future<WeatherDataResult> getCurrentWeatherApi() async {
    try {
      final dio = Dio();
      final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=13.919516&lon=109.205417&units=metric&appid=${WeatherAsset.apiKey}',
      );
      var reponseData = response.data;
      WeatherDataResult weatherDataResult = WeatherDataResult.fromMap(
        reponseData,
      );
      return weatherDataResult;
    } catch (e) {
      debugPrint('Call getCurrentWeatherApi error: $e');
      rethrow;
    }
  }
}
