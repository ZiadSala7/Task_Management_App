import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/onboarding_model.dart';

class OnboardingBodyTexts extends StatelessWidget {
  const OnboardingBodyTexts({super.key, required this.onModel});

  final OnboardingModel onModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          onModel.title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        SizedBox(height: 42),
        Text(
          onModel.desc,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
