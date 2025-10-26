import 'package:flutter/material.dart';

import 'display_tasks_buttons_section.dart';
import 'task_card_details.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({
    super.key,
    required this.isVisible,
    required this.widget,
  });

  final bool isVisible;
  final DisplayTasksButtonsSection widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.38,
      child: SingleChildScrollView(
        child: Column(
          children: isVisible
              ? List.generate(
                  widget.tasks.length,
                  (index) => TaskCardDetails(task: widget.tasks[index]),
                )
              : List.empty(),
        ),
      ),
    );
  }
}
