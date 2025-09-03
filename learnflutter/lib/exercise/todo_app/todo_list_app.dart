import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/todo_app/model/task_item.dart';
import 'package:learnflutter/exercise/todo_app/task_row_widget.dart';
import 'package:learnflutter/exercise/todo_app/add_task_widget.dart';

class TaskListView extends StatefulWidget {
  final List<TaskItem> tasks = [];
  TaskListView({super.key});

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  List<TaskItem> taskList = [];

  TextEditingController textController = TextEditingController();
    

  void _addTask(TaskItem task) {
    setState(() {
      taskList.add(task);
    });
  }

  void _deleteTask(TaskItem task) {
    setState(() {
      taskList.removeWhere((element) => element.id == task.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List App'),
        backgroundColor: Colors.blue[100],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: taskList
              .map((task) => TaskRowWidget(task: task, deleteTaskCallback: _deleteTask))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext buildContext) {
              return AddTaskWidget(
                textController: textController,
                addTaskCallback: _addTask,
              );
            },
          );
        },
      ),
    );
  }
}
