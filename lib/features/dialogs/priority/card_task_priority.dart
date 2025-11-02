import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class CardTaskPriority extends StatefulWidget {
  final int index;
  final bool isActive;
  const CardTaskPriority({
    super.key,
    required this.index,
    required this.isActive,
  });

  @override
  State<CardTaskPriority> createState() => _CardTaskPriorityState();
}

class _CardTaskPriorityState extends State<CardTaskPriority> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      margin: EdgeInsets.only(bottom: 5, right: 5),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: BoxBorder.all(color: AppColors.primaryViolet),
        color: widget.isActive ? AppColors.primaryViolet : null,
      ),
      child: Column(
        children: [
          Icon(Icons.flag_outlined, size: 20),
          Text(
            '${widget.index}',
            style: AppTextStyles.regular16.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
