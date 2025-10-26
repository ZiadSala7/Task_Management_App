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
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: task.categoryClr,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Icon(Icons.home, size: 15),
              Text(
                task.category,
                style: AppTextStyles.regular16.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5, right: 5),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: BoxBorder.all(color: AppColors.primaryViolet),
          ),
          child: Row(
            children: [
              Icon(Icons.flag, size: 12),
              Text(
                '1',
                style: AppTextStyles.regular16.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
