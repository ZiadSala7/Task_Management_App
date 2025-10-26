import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ElevatedButtonIconDisplayList extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const ElevatedButtonIconDisplayList({
    super.key,
    required this.isTodayVisible,
    required this.onPressed,
    required this.title,
  });

  final bool isTodayVisible;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.bottomNavClr,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
      onPressed: onPressed,
      label: Text(
        title,
        style: AppTextStyles.semiBold16.copyWith(color: AppColors.white),
      ),
      icon: isTodayVisible
          ? Icon(Icons.keyboard_arrow_up, color: AppColors.white)
          : Icon(Icons.keyboard_arrow_down, color: AppColors.white),
    );
  }
}
