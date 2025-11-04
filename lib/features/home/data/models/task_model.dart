import '../../../dialogs/category/data/category_model.dart';

class TaskModel {
  bool isCompleted, openToEdits;
  final String taskTitle, taskDescription;
  final DateTime? time;
  final DateTime dateTimeNow;
  final CategoryModel categoryModel;
  final int taskPriority;

  TaskModel({
    required this.taskTitle,
    required this.taskDescription,
    required this.time,
    required this.dateTimeNow,
    this.isCompleted = false,
    this.openToEdits = false,
    required this.categoryModel,
    required this.taskPriority,
  });
}
