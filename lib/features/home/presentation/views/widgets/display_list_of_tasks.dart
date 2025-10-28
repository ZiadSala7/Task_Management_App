import 'package:flutter/material.dart';

import '../../../data/models/task_model.dart';
import 'task_card_details.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({
    super.key,
    required this.isVisible,
    required this.tasks,
  });

  final bool isVisible;
  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.38,
      child: SingleChildScrollView(
        child: Column(
          children: isVisible
              ? List.generate(
                  tasks.length,
                  (index) => TaskCardDetails(task: tasks[index]),
                )
              : List.empty(),
        ),
      ),
    );
  }
}
