import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/weather_app/utils/asset.dart';

class HomeWeatherIcon extends StatelessWidget {
  final String? iconName;
  const HomeWeatherIcon({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: size.width / 1.5,
      child: Image.asset(
        AssetHelper.getAssetFilePath(iconName ?? ''),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
