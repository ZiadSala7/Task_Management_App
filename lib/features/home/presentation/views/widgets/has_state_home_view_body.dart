import 'package:flutter/material.dart';

import '../../../data/models/task_model.dart';
import 'display_tasks_buttons_section.dart';
import 'fake_search_field.dart';

class HasStateHomeViewBody extends StatelessWidget {
  final List<TaskModel> todayTasks, completedTasks;
  const HasStateHomeViewBody({
    super.key,
    required this.todayTasks,
    required this.completedTasks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          FakeSearchField(),
          SizedBox(height: 15),
          DisplayTasksButtonsSection(
            todayTasks: todayTasks,
            completedTasks: completedTasks,
          ),
        ],
      ),
    );
  }
}
