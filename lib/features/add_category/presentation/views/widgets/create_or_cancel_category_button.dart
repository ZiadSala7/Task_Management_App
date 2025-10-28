import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';

class CreateOrCancelCategoryButtons extends StatelessWidget {
  const CreateOrCancelCategoryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          onPressed: () {},
          title: S.of(context).cancel,
          isActive: true,
          background: AppColors.black,
        ),
        CustomButton(
          onPressed: () {},
          title: S.of(context).createCatBtn,
          isActive: true,
        ),
      ],
    );
  }
}
