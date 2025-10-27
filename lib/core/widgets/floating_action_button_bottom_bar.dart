import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../utils/app_assets.dart';
import '../utils/app_text_styles.dart';
import '../../generated/l10n.dart';
import '../utils/app_colors.dart';
import 'date_picker/custom_date_picker.dart';
import 'dialog_text_field.dart';

class FloatingActionButtonBottomBar extends StatelessWidget {
  const FloatingActionButtonBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: AlertDialogBody(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            backgroundColor: AppColors.bottomNavClr,
            insetPadding: EdgeInsets.zero,
            constraints: BoxConstraints.expand(
              height: MediaQuery.sizeOf(context).height * 0.37,
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
        );
      },
      backgroundColor: const Color(0xFF9B9BF4),
      shape: const CircleBorder(),
      child: const Icon(Icons.add, size: 30, color: Colors.white),
    );
  }
}

class AlertDialogBody extends StatelessWidget {
  const AlertDialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<TaskHandlerCubit>(context);
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).addTask,
          style: AppTextStyles.bold23.copyWith(color: AppColors.white),
        ),
        DialogTextField(
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
                    final pickedDate = await showDialog<DateTime>(
                      context: context,
                      builder: (_) => CustomDatePickerDialog(cubit: cubit),
                    );
                    cubit.time = pickedDate;
                  },
                  icon: Image.asset(AppAssets.assetsImagesTimer),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppAssets.assetsImagesFlag),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppAssets.assetsImagesTag),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                if (cubit.taskTitle != '') {
                  cubit.addTask();
                  Navigator.pop(context);
                }
              },
              icon: Image.asset(AppAssets.assetsImagesSend),
            ),
          ],
        ),
      ],
    );
  }
}
