import 'package:uuid/uuid.dart';

class TaskItem {
  String id = const Uuid().v4();
  String taskName;
  bool isCompleted;
  TaskItem(this.taskName, this.isCompleted);
}