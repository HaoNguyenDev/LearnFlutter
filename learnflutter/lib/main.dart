import 'package:flutter/material.dart';
import 'package:learnflutter/learn_widget/widget_example_ui.dart';
import 'package:learnflutter/exercise/square_ui/design_square_on_ui.dart';
import 'package:learnflutter/exercise/todo_app/todo_list_app.dart';

void main() {
  runApp(const MyMainApp());
}

class MyMainApp extends StatelessWidget {
  const MyMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasklistApp(),
    );
  }
}