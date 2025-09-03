import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/todo_app/todo_list_app.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskListView(),
    );
  }
}
