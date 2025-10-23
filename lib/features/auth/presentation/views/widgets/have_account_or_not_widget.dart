import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class HaveAccountOrNotWidget extends StatelessWidget {
  final String textTitle, btnTitle;
  final Function() onPressed;
  const HaveAccountOrNotWidget({
    super.key,
    required this.textTitle,
    required this.btnTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textTitle,
          style: AppTextStyles.regular18.copyWith(color: AppColors.gray200),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            btnTitle,
            style: AppTextStyles.bold19.copyWith(color: AppColors.gray100),
          ),
        ),
      ],
    );
  }
}
