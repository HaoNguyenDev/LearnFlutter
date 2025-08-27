import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learnflutter/exercise/todo_app/model/task_item.dart';

class TaskRowWidget extends StatelessWidget {
  final TaskItem task;
  final Function deleteTaskCallback;

  const TaskRowWidget({
    required this.task,
    required this.deleteTaskCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.taskName,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.start,
              ),
              Text(
                DateFormat('EEEE, d MMMM yyyy, HH:mm:ss').format(task.id),
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  deleteTaskCallback(task);
                },
                child: Icon(Icons.delete_outline_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
