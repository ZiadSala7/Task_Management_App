import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class CategoryIconChooser extends StatelessWidget {
  final Function() onPressed;
  const CategoryIconChooser({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.bottomNavClr,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(6),
        ),
      ),
      child: Text(S.of(context).chooseIcon, style: AppTextStyles.regular16),
    );
  }
}
