import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class DeleteTaskButton extends StatelessWidget {
  const DeleteTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.delete_outline, color: Colors.red),
      label: Text(
        S.of(context).deleteTask,
        style: AppTextStyles.regular16.copyWith(color: Colors.red),
      ),
    );
  }
}
