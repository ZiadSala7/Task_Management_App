import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';
import '../../data/onboarding_model.dart';
import 'bottom_onboarding_buttons.dart';
import 'custom_skip_and_back_button.dart';
import 'onboarding_body_texts.dart';
import 'row_dots_indicator.dart';

class OnboardingViewBody extends StatelessWidget {
  final OnboardingModel onModel;
  final int indexOnboarding;
  const OnboardingViewBody({
    super.key,
    required this.onModel,
    required this.indexOnboarding,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Align(
              alignment: Intl.getCurrentLocale() == 'en'
                  ? AlignmentGeometry.topLeft
                  : AlignmentGeometry.topRight,
              child: CustomSkipAndBackButton(
                title: S.of(context).skip,
                isBack: false,
              ),
            ),
            Image.asset(
              onModel.image,
              height: MediaQuery.sizeOf(context).height * 0.3,
            ),
            SizedBox(height: 50),
            RowDotsIndicator(indexOnboarding: indexOnboarding),
            SizedBox(height: 50),
            OnboardingBodyTexts(onModel: onModel),
            Expanded(child: SizedBox()),
            BottomOnboardingButtons(onModel: onModel),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
