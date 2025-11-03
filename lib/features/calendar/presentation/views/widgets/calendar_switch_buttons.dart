import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CalendarSwitchButtons extends StatelessWidget {
  final int switchValue;
  final ValueChanged<int> onSwitchChanged;

  const CalendarSwitchButtons({
    super.key,
    required this.switchValue,
    required this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton(label: 'Today', value: 1, isActive: switchValue == 1),
          const SizedBox(width: 30),
          _buildButton(
            label: 'Completed',
            value: 2,
            isActive: switchValue == 2,
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required String label,
    required int value,
    required bool isActive,
  }) {
    return Expanded(
      child: TextButton(
        onPressed: () => onSwitchChanged(value),
        style: TextButton.styleFrom(
          backgroundColor: isActive
              ? Colors.deepPurple
              : AppColors.bottomNavClr,
        ),
        child: Text(
          label,
          style: AppTextStyles.bold16.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
