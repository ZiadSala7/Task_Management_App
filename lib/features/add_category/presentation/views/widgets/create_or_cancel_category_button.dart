import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_snack_bar.dart';
import '../../../../dialogs/category/data/category_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../managers/cubit/category_cubit/category_cubit.dart';

class CreateOrCancelCategoryButtons extends StatelessWidget {
  final CategoryModel? model;
  const CreateOrCancelCategoryButtons({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          title: S.of(context).cancel,
          isActive: true,
          background: AppColors.black,
        ),
        CustomButton(
          onPressed: () {
            model != null
                ? {
                    context.read<CategoryCubit>().initCategory(model!),
                    Navigator.pop(context),
                  }
                : customSnackBar(S.of(context).checkFields, context);
          },
          title: S.of(context).createCatBtn,
          isActive: true,
        ),
      ],
    );
  }
}
