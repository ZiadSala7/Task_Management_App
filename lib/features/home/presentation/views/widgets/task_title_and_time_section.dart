import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/task_model.dart';

class TaskTitleAndTimeSection extends StatelessWidget {
  const TaskTitleAndTimeSection({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          task.taskTitle,
          style: AppTextStyles.bold19.copyWith(color: AppColors.white),
        ),
        Text(
          "Today at ${task.timeOfDay.hour} : ${task.timeOfDay.minute.toString().padLeft(2, '0')} ${task.pmOram}",
          style: AppTextStyles.regular16.copyWith(color: AppColors.gray300),
        ),
      ],
    );
  }
}
