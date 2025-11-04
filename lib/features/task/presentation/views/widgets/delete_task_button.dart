import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../home/data/models/task_model.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'delete_task_dialog.dart';

class DeleteTaskButton extends StatelessWidget {
  final TaskModel taskModel;
  const DeleteTaskButton({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        showDialog(
          context: context,
          builder: (context) {
            return DeleteTaskDialog(taskModel: taskModel);
          },
        );
      },
      icon: const Icon(Icons.delete_outline, color: AppColors.accentRed),
      label: Text(
        S.of(context).deleteTask,
        style: AppTextStyles.regular16.copyWith(color: AppColors.accentRed),
      ),
    );
  }
}
