import 'package:flutter/material.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: size.width / 1.5,
      child: Image.asset('assets/images/weathers/lightdrizzle.png', fit: BoxFit.fitWidth),
    );
  }
}
