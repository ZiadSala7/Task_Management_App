import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../home/data/models/task_model.dart';

class TaskHeaderDetails extends StatelessWidget {
  const TaskHeaderDetails({super.key, required this.taskModel});

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Text(
                  taskModel.taskTitle,
                  style: AppTextStyles.bold19.copyWith(color: AppColors.white),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.edit_outlined, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            SizedBox(width: 30),
            Text(
              taskModel.taskDescription,
              style: AppTextStyles.regular16.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
