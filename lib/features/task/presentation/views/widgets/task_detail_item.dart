import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class TaskDetailItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final IconData? iconValue;

  const TaskDetailItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.iconValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 22),
        const SizedBox(width: 10),
        Expanded(child: Text(title, style: AppTextStyles.regular16)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.bottomNavClr,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              if (iconValue != null)
                Icon(iconValue, color: Colors.white70, size: 18),
              if (iconValue != null) const SizedBox(width: 6),
              Text(value, style: AppTextStyles.regular16),
            ],
          ),
        ),
      ],
    );
  }
}
