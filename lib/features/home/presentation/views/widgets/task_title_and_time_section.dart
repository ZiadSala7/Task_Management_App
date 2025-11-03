import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/models/task_model.dart';
import 'task_category_and_priority_section.dart';

class TaskTitleAndTimeSection extends StatelessWidget {
  const TaskTitleAndTimeSection({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    final formatted = DateFormat(
      'hh:mm a',
    ).format(task.dateTimeNow); // مثال: 07:45 PM
    return Column(
      spacing: 6,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          task.taskTitle,
          style: AppTextStyles.bold19.copyWith(color: AppColors.white),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "${S.of(context).todayAt} $formatted",
          style: AppTextStyles.regular16.copyWith(color: AppColors.gray300),
        ),
        TaskCategoryAndPrioritySection(task: task),
      ],
    );
  }
}
