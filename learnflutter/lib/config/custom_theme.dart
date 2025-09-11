import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Colors.blue,
      hintColor: Colors.orange,
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }
}
