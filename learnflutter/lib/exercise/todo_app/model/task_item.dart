import 'package:uuid/uuid.dart';

class TaskItem {
  final String id;
  String taskName;
  bool isCompleted;
  final DateTime dateCreated;

  TaskItem({
    required this.taskName,
    required this.isCompleted,
    required this.dateCreated,
  }) : id = const Uuid().v4();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'taskName': taskName,
      'isCompleted': isCompleted,
      'dateCreated': dateCreated.toIso8601String(),
    };
  }

  factory TaskItem.fromJson(Map<String, dynamic> json) {
    return TaskItem(
      taskName: json['taskName'] as String,
      isCompleted: json['isCompleted'] as bool,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
    );
  }
}
