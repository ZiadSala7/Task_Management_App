import 'package:flutter/material.dart';

import '../auth_chooser_view.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomSkipAndBackButton extends StatelessWidget {
  final String title;
  final bool isBack;
  final Function()? onPressed;
  const CustomSkipAndBackButton({
    super.key,
    required this.title,
    required this.isBack,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
      onPressed: isBack
          ? onPressed
          : () {
              Navigator.of(context).pushReplacementNamed(AuthChooserView.id);
            },
      child: Text(title, style: TextStyles.regular20),
    );
  }
}
