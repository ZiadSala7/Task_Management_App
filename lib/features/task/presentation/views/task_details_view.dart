import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../home/data/models/task_model.dart';
import 'widgets/task_details_view_body.dart';
import 'widgets/task_details_appbar.dart';

class TaskDetailsView extends StatelessWidget {
  final TaskModel taskModel;
  const TaskDetailsView({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: taskDeatilsAppBar(context),
      body: FadeInUp(
        delay: Duration(milliseconds: 10),
        child: TaskDetailsViewBody(taskModel: taskModel),
      ),
    );
  }
}
