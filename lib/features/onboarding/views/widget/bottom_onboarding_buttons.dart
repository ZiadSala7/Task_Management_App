import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import '../../data/onboarding_model.dart';
import 'custom_skip_and_back_button.dart';

class BottomOnboardingButtons extends StatelessWidget {
  const BottomOnboardingButtons({super.key, required this.onModel});

  final OnboardingModel onModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        onModel.isFirst
            ? SizedBox()
            : CustomSkipAndBackButton(
                title: S.of(context).back,
                isBack: true,
                onPressed: onModel.onBack,
              ),
        CustomButton(onModel: onModel),
      ],
    );
  }
}
