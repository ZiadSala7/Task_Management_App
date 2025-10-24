import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';
import 'custom_text_form_field.dart';
import '../../generated/l10n.dart';
import '../utils/app_colors.dart';

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
              height: MediaQuery.sizeOf(context).height * 0.3,
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
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).addTask,
          style: AppTextStyles.bold23.copyWith(color: AppColors.white),
        ),
        CustomTextFormField(title: S.of(context).titleTask),
        CustomTextFormField(title: S.of(context).desc),
      ],
    );
  }
}
