import 'package:flutter/material.dart';

import '../../features/onboarding/data/onboarding_model.dart';
import '../../generated/l10n.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onModel, this.fontSize = 20});

  final OnboardingModel onModel;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        backgroundColor: AppColors.softPurple,
      ),
      onPressed: onModel.nextOnPressed,
      child: Text(
        onModel.isLast ? S.of(context).getStarted : S.of(context).next,
        style: TextStyles.regular20.copyWith(
          color: AppColors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
