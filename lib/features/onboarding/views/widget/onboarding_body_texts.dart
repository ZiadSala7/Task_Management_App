import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/onboarding_model.dart';

class OnboardingBodyTexts extends StatelessWidget {
  const OnboardingBodyTexts({super.key, required this.onModel});

  final OnboardingModel onModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(onModel.title, style: AppTextStyles.bold32),
        SizedBox(height: 42),
        Text(
          onModel.desc,
          textAlign: TextAlign.center,
          style: AppTextStyles.regular18.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}
