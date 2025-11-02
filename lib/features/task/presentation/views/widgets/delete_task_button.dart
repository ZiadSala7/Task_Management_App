import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/task_model.dart';
import '../../../../home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class DeleteTaskButton extends StatelessWidget {
  final TaskModel taskModel;
  const DeleteTaskButton({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        context.read<TaskHandlerCubit>().deleteTask(taskModel);
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.delete_outline, color: Colors.red),
      label: Text(
        S.of(context).deleteTask,
        style: AppTextStyles.regular16.copyWith(color: Colors.red),
      ),
    );
  }
}
