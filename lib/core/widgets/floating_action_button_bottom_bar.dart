import 'package:flutter/material.dart';
import 'package:task_management/core/helper/text_form_field_builder_border.dart';
import 'package:task_management/core/utils/app_assets.dart';

import '../utils/app_text_styles.dart';
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
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).addTask,
          style: AppTextStyles.bold23.copyWith(color: AppColors.white),
        ),
        DialogTextField(title: S.of(context).titleTask),
        DialogTextField(title: S.of(context).desc),
        Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
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
              onPressed: () {},
              icon: Image.asset(AppAssets.assetsImagesSend),
            ),
          ],
        ),
      ],
    );
  }
}

class DialogTextField extends StatelessWidget {
  final String title;
  final Function(String)? onChanged;
  const DialogTextField({super.key, this.onChanged, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      style: TextStyle(color: AppColors.white, fontSize: 20),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.bottomNavClr,
        focusedBorder: textFormFieldFocusBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: AppColors.bottomNavClr),
        ),
        hintText: title,
        hintStyle: TextStyle(color: AppColors.gray200),
      ),
    );
  }
}
