import 'package:flutter/material.dart';

import 'custom_dot_indicator_widget.dart';

class RowDotsIndicator extends StatelessWidget {
  const RowDotsIndicator({super.key, required this.indexOnboarding});

  final int indexOnboarding;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: List.generate(
        3,
        (index) => CustomDotIndicatorWidget(isActive: indexOnboarding == index),
      ),
    );
  }
}
