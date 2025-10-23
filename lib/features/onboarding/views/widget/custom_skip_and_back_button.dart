import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class CustomSkipAndBackButton extends StatelessWidget {
  final String title;
  final Function(BuildContext context) onPressed;
  const CustomSkipAndBackButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
      onPressed: () => onPressed,
      child: Text(title, style: TextStyles.regular20),
    );
  }
}
