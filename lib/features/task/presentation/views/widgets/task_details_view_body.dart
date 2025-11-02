import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/data/models/task_model.dart';
import 'delete_task_button.dart';
import 'task_detail_items.dart';
import 'task_header_details.dart';

class TaskDetailsViewBody extends StatelessWidget {
  final TaskModel taskModel;
  const TaskDetailsViewBody({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Task Header
          TaskHeaderDetails(taskModel: taskModel),
          // Details
          SizedBox(height: 50),
          TaskDetailItems(taskModel: taskModel),
          DeleteTaskButton(taskModel: taskModel),
          const Spacer(),
          // Edit button
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton(
                onPressed: () {},
                title: S.of(context).editTask,
                isActive: true,
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
