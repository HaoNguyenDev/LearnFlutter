import 'package:uuid/uuid.dart';

class TaskItem {
  DateTime id = DateTime.now();
  String taskName;
  bool isCompleted;
  TaskItem(this.taskName, this.isCompleted);
}