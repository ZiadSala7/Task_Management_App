import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../managers/task_cubit/task_handler_cubit.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/task_model.dart';

class CheckTaskCompletedButton extends StatefulWidget {
  final TaskModel task;
  const CheckTaskCompletedButton({super.key, required this.task});

  @override
  State<CheckTaskCompletedButton> createState() =>
      _CheckTaskCompletedButtonState();
}

class _CheckTaskCompletedButtonState extends State<CheckTaskCompletedButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          setState(() {
            widget.task.isCompleted = !widget.task.isCompleted;
            widget.task.isCompleted
                ? context.read<TaskHandlerCubit>().addTaskToCompleted(
                    widget.task,
                  )
                : context.read<TaskHandlerCubit>().removeTaskFromCompleted(
                    widget.task,
                  );
          });
        },
        icon: widget.task.isCompleted
            ? Icon(Icons.circle_rounded, color: AppColors.softPurple)
            : Icon(Icons.circle_outlined),
      ),
    );
  }
}
