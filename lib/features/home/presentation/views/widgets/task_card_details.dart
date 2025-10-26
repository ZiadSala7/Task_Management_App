import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/task_model.dart';
import 'check_task_completion_button.dart';
import 'task_category_and_priority_section.dart';
import 'task_title_and_time_section.dart';

class TaskCardDetails extends StatelessWidget {
  final TaskModel task;
  const TaskCardDetails({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.bottomNavClr,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(flex: 1, child: CheckTaskCompletedButton()),
          Expanded(flex: 3, child: TaskTitleAndTimeSection(task: task)),
          Expanded(flex: 3, child: TaskCategoryAndPrioritySection(task: task)),
        ],
      ),
    );
  }
}
