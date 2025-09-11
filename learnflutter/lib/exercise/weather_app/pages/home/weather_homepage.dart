import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/weather_app/pages/home/home_weather_icon.dart';
import 'package:learnflutter/exercise/weather_app/pages/home/home_temperature.dart';
import 'package:learnflutter/exercise/weather_app/pages/home/home_location.dart';
import 'package:learnflutter/exercise/weather_app/pages/widgets/home_weather_detail.dart';
import 'package:learnflutter/exercise/weather_app/models/weather_result.dart';
import 'package:learnflutter/exercise/weather_app/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getCurrentWeather();
  }

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
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getCurrentWeather(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (!snapshot.hasData) {
              return Text('No data');
            }
            WeatherDataResult result = snapshot.data as WeatherDataResult;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeWeatherIcon(iconName: result.weather![0].main),
                HomeTemperature(temperature: result.main?.temp),
                HomeLocation(locationName: result.name),
                SizedBox(height: 50),
                HomeWeatherDetail(wind: result.wind),
              ],
            );
          },
        ),
      ),
    );
  }
}
