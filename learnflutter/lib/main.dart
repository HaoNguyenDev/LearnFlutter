import 'package:flutter/material.dart';
import 'package:learnflutter/learn_widget/widget_example_ui.dart';
import 'package:learnflutter/exercise/square_ui/design_square_on_ui.dart';
import 'package:learnflutter/exercise/todo_app/todo_list_app.dart';
import 'package:learnflutter/exercise/weather_app/weather_homepage.dart';
void main() {
  // runApp(const TodoApp());
  runApp(const WeatherApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasklistApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherHomePage(),
    );
  }
}
