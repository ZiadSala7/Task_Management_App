import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CheckTaskCompletedButton extends StatefulWidget {
  const CheckTaskCompletedButton({super.key});

  @override
  State<CheckTaskCompletedButton> createState() =>
      _CheckTaskCompletedButtonState();
}

class _CheckTaskCompletedButtonState extends State<CheckTaskCompletedButton> {
  bool isCompletd = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          setState(() {
            isCompletd = !isCompletd;
          });
        },
        icon: isCompletd
            ? Icon(Icons.circle_rounded, color: AppColors.softPurple)
            : Icon(Icons.circle_outlined),
      ),
    );
  }
}
