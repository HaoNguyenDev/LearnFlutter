import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/todo_app/model/task_item.dart';

class InputTaskWidget extends StatefulWidget {
  final Function addTaskCallback;

  const InputTaskWidget({super.key, required this.addTaskCallback});

  @override
  State<InputTaskWidget> createState() => _InputTaskWidgetState();
}

class _InputTaskWidgetState extends State<InputTaskWidget> {
  TextEditingController textController = TextEditingController();

  var _isEnableAddBtn = false;

  void _handleAddTaskBtn(BuildContext context) {
    var taskName = textController.text;
    if (taskName.isEmpty) {
      return;
    }
    textController.clear();
    widget.addTaskCallback(TaskItem(taskName, false));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: textController,
              onChanged: (value) => {
                setState(() {
                   _isEnableAddBtn = value.isNotEmpty;
                })
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Task Name',
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isEnableAddBtn ? Colors.blueAccent : Colors.grey,
                ),
                onPressed: () {
                  _handleAddTaskBtn(context);
                },
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
