import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SocialMediaButtonLogin extends StatelessWidget {
  final String icon, title;
  final Function() onPressed;
  const SocialMediaButtonLogin({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(
        title,
        style: AppTextStyles.regular20.copyWith(color: AppColors.white),
      ),
      icon: Image.asset(icon),
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.disabledBackground,
        padding: EdgeInsets.all(13),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: AppColors.disabledBackground),
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        backgroundColor: AppColors.black,
      ),
    );
  }
}
