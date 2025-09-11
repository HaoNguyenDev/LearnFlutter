import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/weather_app/models/weather_result.dart';

class HomeWeatherDetail extends StatelessWidget {
  const HomeWeatherDetail({super.key, required this.wind});

  final WindObject? wind;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icons/wind.png',
              width: 40,
              height: 40,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 10),
            Text(
              '${wind?.speed ?? 0} km/h',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        SizedBox(width: 50),
        Column(
          children: [
            Image.asset(
              'assets/images/icons/humidity.png',
              width: 40,
              height: 40,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 10),
            Text('${wind?.gust ?? 0.0}', style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ],
    );
  }
}
