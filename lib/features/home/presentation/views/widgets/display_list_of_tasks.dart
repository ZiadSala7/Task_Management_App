import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
    if (!isVisible || tasks.isEmpty) {
      return const SizedBox.shrink();
    }

    return AnimationLimiter(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 400),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(child: TaskCardDetails(task: task)),
            ),
          );
        },
      ),
    );
  }
}
