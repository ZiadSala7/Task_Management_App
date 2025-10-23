import 'package:flutter/material.dart';
import 'package:task_management/features/onboarding/views/widget/onboarding_view_body.dart';

import '../../../../constants.dart';
import '../../data/onboarding_model.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    List<OnboardingModel> onboardings = onboardingModels(context);
    return PageView(
      controller: controller,
      children: List.generate(
        onboardings.length,
        (index) => OnboardingViewBody(
          onModel: onboardings[index],
          indexOnboarding: index,
        ),
      ),
    );
  }
}
