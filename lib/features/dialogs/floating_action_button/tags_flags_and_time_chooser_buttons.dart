import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../add_category/presentation/managers/cubit/category_cubit/category_cubit.dart';
import '../../add_category/presentation/managers/cubit/category_cubit/category_states.dart';
import '../../home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../category/data/category_model.dart';
import '../category/widgets/category_dialog.dart';
import '../date_picker/custom_date_picker.dart';
import '../priority/priority_dialog.dart';

Row tagsFlagsAndTimeChooserButtons(
  BuildContext context,
  DateTime? dateTime,
  CategoryCubit categoryCubit,
  GlobalKey<FormState> formKey,
  TaskHandlerCubit taskHandlerCubit,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () async {
              // return DateTime if found
              final pickedDate = await showDialog<DateTime>(
                context: context,
                builder: (_) => CustomDatePickerDialog(),
              );
              dateTime = pickedDate ?? DateTime.now();
            },
            icon: Icon(Icons.timer_outlined),
          ),
          IconButton(
            onPressed: () async {
              await showDialog(
                context: Navigator.of(context, rootNavigator: true).context,
                builder: (_) => PriorityDialog(),
              );
            },
            icon: Icon(Icons.flag, color: AppColors.primaryIndigo),
          ),
          IconButton(
            onPressed: () async {
              await showDialog<CategoryModel>(
                context: Navigator.of(context, rootNavigator: true).context,
                builder: (_) => const CategoryDialog(),
              );
            },
            icon: categoryCubit.state is CategoryChoosen
                ? Icon(Icons.sell, color: AppColors.softPurple)
                : Icon(Icons.sell_outlined),
          ),
        ],
      ),
      IconButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            taskHandlerCubit.createAndAddTaskToList(
              dateTime,
              context.read<CategoryCubit>().categoryModel,
              taskPriority,
            );
            Navigator.pop(context);
          }
        },
        icon: Image.asset(AppAssets.assetsImagesSend),
      ),
    ],
  );
}
