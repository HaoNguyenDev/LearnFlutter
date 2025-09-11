import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff1D6CF3), Color(0x00ff19d2)],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Row(
            children: [
              Icon(CupertinoIcons.location),
              SizedBox(),
              Text('Qui Nhon City'),
            ],
          ),
        ),
      ),
    );
  }
}
