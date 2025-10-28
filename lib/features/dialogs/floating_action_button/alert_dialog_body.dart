import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../generated/l10n.dart';
import '../../../core/utils/app_colors.dart';
import '../category/data/category_model.dart';
import '../category/widgets/category_dialog.dart';
import '../date_picker/custom_date_picker.dart';
import '../../../core/widgets/dialog_text_field.dart';

class AlertDialogBody extends StatelessWidget {
  const AlertDialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<TaskHandlerCubit>();
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
          DialogTextField(
            validator: (value) {
              return value!.isEmpty ? "This field can't be empty" : null;
            },
            title: S.of(context).titleTask,
            onChanged: (value) {
              cubit.taskTitle = value;
            },
          ),
          DialogTextField(
            title: S.of(context).desc,
            onChanged: (value) {
              cubit.taskDesc = value;
            },
          ),
          Expanded(child: SizedBox()),
          Row(
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
                      log(dateTime.toString());
                    },
                    icon: Image.asset(AppAssets.assetsImagesTimer),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(AppAssets.assetsImagesFlag),
                  ),
                  IconButton(
                    onPressed: () async {
                      await showDialog<CategoryModel>(
                        context: context,
                        builder: (_) => const CategoryDialog(),
                      );
                    },
                    icon: Image.asset(AppAssets.assetsImagesTag),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    cubit.createAndAddTaskToList(dateTime);
                    Navigator.pop(context);
                  }
                },
                icon: Image.asset(AppAssets.assetsImagesSend),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
