import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/todo_app/model/task_item.dart';

class AddTaskWidget extends StatefulWidget {
  final Function addTaskCallback;
  final TextEditingController textController;

  const AddTaskWidget({
    super.key,
    required this.textController,
    required this.addTaskCallback,
  });

  @override
  State<AddTaskWidget> createState() => _AddTaskWidgetState();
}

class _AddTaskWidgetState extends State<AddTaskWidget> {
  var _isEnableBtn = false;

  void _handleAddTaskBtn(BuildContext context) {
    var taskName = widget.textController.text;
    if (taskName.isEmpty) {
      return;
    }
    widget.addTaskCallback(TaskItem(taskName: taskName, isCompleted: false, dateCreated: DateTime.now()));
    widget.textController.clear();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: widget.textController,
                onChanged: (value) => {
                  debugPrint(value),
                  setState(() {
                    _isEnableBtn = value.isNotEmpty;
                  }),
                },
                decoration: InputDecoration(
                  label: Text('Enter task name'),
                  // hintText: 'Enter task name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: _isEnableBtn
                    ? () {
                        _handleAddTaskBtn(context);
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isEnableBtn
                      ? Colors.blue
                      : Colors.grey[400],
                ),
                child: Text('Add task', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
