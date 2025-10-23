import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widget/onboarding_page_view.dart';

class OnboardingView extends StatelessWidget {
  static const String id = 'onboardingView';
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(delay: Duration(seconds: 2), child: OnboardingPageView()),
    );
  }
}
