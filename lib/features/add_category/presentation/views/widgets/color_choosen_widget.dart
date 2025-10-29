import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class ColorChoosenWidget extends StatelessWidget {
  final bool isChoosen;
  final Color color;
  const ColorChoosenWidget({
    super.key,
    required this.isChoosen,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 40,
        width: 40,
        color: color,
        child: isChoosen
            ? Icon(Icons.check, color: AppColors.white, size: 30)
            : null,
      ),
    );
  }
}
