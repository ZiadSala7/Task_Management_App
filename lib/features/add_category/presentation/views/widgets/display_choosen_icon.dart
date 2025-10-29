import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class DisplayChoosenIcon extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  const DisplayChoosenIcon({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.bottomNavClr,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon),
      ),
    );
  }
}
