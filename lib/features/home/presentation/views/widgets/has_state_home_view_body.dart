import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/models/task_model.dart';
import '../search_view.dart';
import 'display_tasks_buttons_section.dart';

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
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SearchView.id);
            },
            child: CustomTextFormField(
              title: S.of(context).searchForTask,
              hasPrefix: true,
            ),
          ),
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
