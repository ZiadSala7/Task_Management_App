import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/data/models/task_model.dart';
import '../../../../home/presentation/managers/task_cubit/task_handler_cubit.dart';

class DeleteTaskDialog extends StatelessWidget {
  const DeleteTaskDialog({super.key, required this.taskModel});

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Dialog(
        insetPadding: EdgeInsets.all(15),
        backgroundColor: AppColors.bottomNavClr,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(S.of(context).deleteTask, style: AppTextStyles.bold16),
              const Divider(color: Colors.white24, height: 20),
              const SizedBox(height: 25),
              Text(
                S.of(context).deleteTaskDesc,
                style: AppTextStyles.semiBold16,
              ),
              SizedBox(height: 15),
              Text(
                "${S.of(context).taskTitleDel} ${taskModel.taskTitle}",
                style: AppTextStyles.semiBold16,
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 65,
                width: double.infinity,
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        background: AppColors.bottomNavClr,
                        isActive: true,
                        onPressed: () {
                          context.read<TaskHandlerCubit>().deleteTask(
                            taskModel,
                          );
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                        title: S.of(context).deleteTask,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        onPressed: () => Navigator.of(context).pop(),
                        title: S.of(context).cancel,
                        isActive: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
