import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class TaskDoneOrLeftWidget extends StatelessWidget {
  final String num;
  final bool isDone;
  const TaskDoneOrLeftWidget({
    super.key,
    required this.num,
    required this.isDone,
  });
  @override
  Widget build(BuildContext context) {
    String isDoneOrLeft = isDone
        ? S.of(context).taskDone
        : S.of(context).taskLeft;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 17),
      decoration: BoxDecoration(
        color: AppColors.bottomNavClr,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [Text("$num $isDoneOrLeft", style: AppTextStyles.regular16)],
      ),
    );
  }
}
