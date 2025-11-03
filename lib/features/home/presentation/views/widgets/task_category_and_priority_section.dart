import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/task_model.dart';

class TaskCategoryAndPrioritySection extends StatelessWidget {
  const TaskCategoryAndPrioritySection({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: BoxBorder.all(color: AppColors.primaryViolet),
          ),
          child: Row(
            children: [
              Icon(Icons.flag, size: 12),
              Text(
                task.taskPriority.toString(),
                style: AppTextStyles.regular16.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: task.categoryModel.color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Icon(task.categoryModel.icon, size: 15),
              Text(
                " ${task.categoryModel.name}",
                style: AppTextStyles.regular16.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
