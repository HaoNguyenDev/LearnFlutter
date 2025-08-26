import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/todo_app/model/task_item.dart';
import 'package:learnflutter/exercise/todo_app/task_row_widget.dart';
import 'package:learnflutter/exercise/todo_app/add_task_widget.dart';

class TasklistApp extends StatefulWidget {
  const TasklistApp({super.key});

  @override
  State<TasklistApp> createState() => _TasklistAppState();
}

class _TasklistAppState extends State<TasklistApp> {
  final List<TaskItem> taskList = [];

  //MARK: Add Task
  void _addTask(TaskItem task) {
    debugPrint('Add task: ${task.taskName}');
    setState(() {
      taskList.add(task);
    });
    debugPrint('Task list length: ${taskList.length}');
  }

  //MARK: Delete Task
  void _deleteTask(String taskId) {
    debugPrint('Delete task: $taskId');
    setState(() {
      taskList.removeWhere((task) => task.id == taskId);
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('redraw ui');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo List App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: taskList
              .map(
                (task) => TaskRowWidget(
                  taskItem: task,
                  deleteTaskCallback: _deleteTask,
                ),
              )
              .toList(),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Using a Builder to get a context with a MaterialApp ancestor
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.white,
            context: context,
            builder: (BuildContext buildContext) {
              return InputTaskWidget(addTaskCallback: _addTask);
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
