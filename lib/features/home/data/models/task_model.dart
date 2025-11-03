import '../../../dialogs/category/data/category_model.dart';

class TaskModel {
  bool isCompleted;
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
    required this.categoryModel,
    required this.taskPriority
  });
}
