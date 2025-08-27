import 'package:uuid/uuid.dart';

class TaskItem {
  final String id;
  String taskName;
  bool isCompleted;
  final DateTime dateCreated;
  TaskItem(this.taskName, this.isCompleted) : id = const Uuid().v4(), dateCreated = DateTime.now();
}