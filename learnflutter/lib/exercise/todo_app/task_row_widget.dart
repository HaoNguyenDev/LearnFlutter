import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/todo_app/model/task_item.dart';

class TaskRowWidget extends StatelessWidget {
  final TaskItem taskItem;
  final Function deleteTaskCallback;

  const TaskRowWidget({required this.taskItem, required this.deleteTaskCallback, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              taskItem.taskName,
              style: TextStyle(
                color: const Color(0xff4B4B4B),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () async {
                if (await confirm(context)) {
                  debugPrint('Delete task: ${taskItem.taskName}');
                deleteTaskCallback(taskItem.id);
                }
                debugPrint('Close dialog');
                return;
              },
              child: Icon(
                Icons.delete_outlined,
                color: const Color(0xff4B4B4B),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
