import 'package:flutter/material.dart';

class TaskModel {
  bool isCompleted;
  final String taskTitle, taskDescription, catName, pmOram;
  final Color categoryClr;
  final DateTime? time;
  final DateTime dateTimeNow;

  TaskModel({
    required this.taskTitle,
    required this.taskDescription,
    required this.catName,
    required this.categoryClr,
    required this.time,
    required this.pmOram,
    required this.dateTimeNow,
    this.isCompleted = false,
  });
}
