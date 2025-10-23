import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CustomDotIndicatorWidget extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicatorWidget({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 30,
      decoration: BoxDecoration(
        color: isActive ? AppColors.white : AppColors.gray300,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
