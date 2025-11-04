import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../add_category/presentation/managers/cubit/category_cubit/category_cubit.dart';
import '../../home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../generated/l10n.dart';
import '../../../core/utils/app_colors.dart';
import 'alert_dialog_form.dart';
import 'tags_flags_and_time_chooser_buttons.dart';

class AlertDialogBody extends StatelessWidget {
  const AlertDialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    var taskHandlerCubit = context.read<TaskHandlerCubit>();
    var categoryCubit = context.watch<CategoryCubit>();
    final formKey = GlobalKey<FormState>();
    DateTime? dateTime;
    return Form(
      key: formKey,
      child: Column(
        spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).addTask,
            style: AppTextStyles.bold23.copyWith(color: AppColors.white),
          ),
          AlertDialogForm(cubit: taskHandlerCubit),
          Expanded(child: SizedBox()),
          tagsFlagsAndTimeChooserButtons(
            context,
            dateTime,
            categoryCubit,
            formKey,
            taskHandlerCubit,
          ),
        ],
      ),
    );
  }
}
