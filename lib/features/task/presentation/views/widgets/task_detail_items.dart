import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../home/data/models/task_model.dart';
import 'task_detail_item.dart';

class TaskDetailItems extends StatelessWidget {
  const TaskDetailItems({super.key, required this.taskModel});

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        TaskDetailItem(
          icon: Icons.access_time,
          title: S.of(context).taskTime,
          value:
              "${S.of(context).todayAt} ${taskModel.dateTimeNow.hour} : ${taskModel.dateTimeNow.minute.toString().padLeft(2, '0')} ${taskModel.pmOram}",
        ),
        const SizedBox(height: 30),
        TaskDetailItem(
          icon: Icons.category_outlined,
          title: S.of(context).taskCate,
          value: taskModel.categoryModel.name,
          iconValue: taskModel.categoryModel.icon,
        ),
        const SizedBox(height: 30),
        TaskDetailItem(
          icon: Icons.flag_outlined,
          title: S.of(context).taskPrio,
          value: taskModel.taskPriority.toString(),
          iconValue: Icons.flag_outlined,
        ),
        const SizedBox(),
      ],
    );
  }
}
