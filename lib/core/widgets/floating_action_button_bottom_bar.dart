import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'alert_dialog_body.dart';

class FloatingActionButtonBottomBar extends StatelessWidget {
  const FloatingActionButtonBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: AlertDialogBody(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            backgroundColor: AppColors.bottomNavClr,
            insetPadding: EdgeInsets.zero,
            constraints: BoxConstraints.expand(
              height: MediaQuery.sizeOf(context).height * 0.37,
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
        );
      },
      backgroundColor: const Color(0xFF9B9BF4),
      shape: const CircleBorder(),
      child: const Icon(Icons.add, size: 30, color: Colors.white),
    );
  }
}
