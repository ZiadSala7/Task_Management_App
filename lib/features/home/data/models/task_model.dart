import 'package:flutter/material.dart';

class TaskModel {
  final String taskTitle, taskDescription, catName, pmOram;
  final Color categoryClr;
  final DateTime time;
  final TimeOfDay timeOfDay;

  TaskModel({
    required this.taskTitle,
    required this.taskDescription,
    required this.catName,
    required this.categoryClr,
    required this.time,
    required this.pmOram,
    required this.timeOfDay,
  });
}
