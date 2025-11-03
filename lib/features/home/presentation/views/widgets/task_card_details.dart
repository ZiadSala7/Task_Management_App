import 'package:flutter/material.dart';

import '../../../../task/presentation/views/task_details_view.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/task_model.dart';
import 'check_task_completion_button.dart';
import 'task_title_and_time_section.dart';

class TaskCardDetails extends StatelessWidget {
  final TaskModel task;
  const TaskCardDetails({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: AppColors.bottomNavClr,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TaskDetailsView(taskModel: task),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(flex: 1, child: CheckTaskCompletedButton(task: task)),
            Expanded(flex: 4, child: TaskTitleAndTimeSection(task: task)),
          ],
        ),
      ),
    );
  }
}
