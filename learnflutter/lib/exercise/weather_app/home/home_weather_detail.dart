import 'package:flutter/material.dart';

class HomeWeatherDetail extends StatelessWidget {
  const HomeWeatherDetail({super.key});
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
              '10 km/h',
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
            Text(
              '30%',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}
