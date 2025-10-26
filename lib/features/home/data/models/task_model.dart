import 'package:flutter/material.dart';

class TaskModel {
  final String taskTitle, taskDetails, category;
  final Color categoryClr;
  final DateTime time;

  TaskModel({
    required this.taskTitle,
    required this.taskDetails,
    required this.category,
    required this.categoryClr,
    required this.time,
  });
}

