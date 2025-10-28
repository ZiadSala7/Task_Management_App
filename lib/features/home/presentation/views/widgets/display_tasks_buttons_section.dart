import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../data/models/task_model.dart';
import 'display_list_of_tasks.dart';
import 'elevated_button_display_list.dart';

class DisplayTasksButtonsSection extends StatefulWidget {
  final List<TaskModel> todayTasks, completedTasks;
  const DisplayTasksButtonsSection({
    super.key,
    required this.todayTasks,
    required this.completedTasks,
  });

  @override
  State<DisplayTasksButtonsSection> createState() =>
      _DisplayTasksButtonsSectionState();
}

class _DisplayTasksButtonsSectionState
    extends State<DisplayTasksButtonsSection> {
  bool isTodayVisible = true;
  bool isCompletedVisible = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButtonIconDisplayList(
            isTodayVisible: isTodayVisible,
            onPressed: () {
              setState(() {
                isTodayVisible = !isTodayVisible;
              });
            },
            title: S.of(context).today,
          ),
          isTodayVisible
              ? DisplayListOfTasks(
                  isVisible: isTodayVisible,
                  tasks: widget.todayTasks,
                )
              : SizedBox(),
          ElevatedButtonIconDisplayList(
            isTodayVisible: isCompletedVisible,
            onPressed: () {
              setState(() {
                isCompletedVisible = !isCompletedVisible;
              });
            },
            title: S.of(context).completed,
          ),
          isCompletedVisible
              ? DisplayListOfTasks(
                  isVisible: isCompletedVisible,
                  tasks: widget.completedTasks,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
