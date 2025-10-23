import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final double fontSize;
  final Color background, border;
  final bool isActive;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.fontSize = 20,
    this.background = AppColors.softPurple,
    this.border = AppColors.disabledBackground,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.disabledBackground,
        padding: EdgeInsets.all(13),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: border),
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        backgroundColor: background,
      ),
      onPressed: isActive ? onPressed : null,
      child: Text(
        title,
        style: AppTextStyles.regular20.copyWith(
          color: AppColors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
