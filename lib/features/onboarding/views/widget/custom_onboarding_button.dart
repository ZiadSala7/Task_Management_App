import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../data/onboarding_model.dart';

class CustomOnboardingButton extends StatelessWidget {
  const CustomOnboardingButton({super.key, required this.onModel});

  final OnboardingModel onModel;

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
        style: AppTextStyles.regular20.copyWith(color: AppColors.white),
      ),
    );
  }
}
