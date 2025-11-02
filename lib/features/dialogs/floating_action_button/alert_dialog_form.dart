import 'package:flutter/material.dart';

import '../../../core/widgets/dialog_text_field.dart';
import '../../../generated/l10n.dart';
import '../../home/presentation/managers/task_cubit/task_handler_cubit.dart';

class AlertDialogForm extends StatelessWidget {
  const AlertDialogForm({super.key, required this.cubit});

  final TaskHandlerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DialogTextField(
          initVal: cubit.taskTitle,
          validator: (value) {
            return value!.isEmpty ? "This field can't be empty" : null;
          },
          title: S.of(context).titleTask,
          onChanged: (value) {
            cubit.taskTitle = value;
          },
        ),
        DialogTextField(
          initVal: cubit.taskDesc,
          title: S.of(context).desc,
          onChanged: (value) {
            cubit.taskDesc = value;
          },
        ),
      ],
    );
  }
}
