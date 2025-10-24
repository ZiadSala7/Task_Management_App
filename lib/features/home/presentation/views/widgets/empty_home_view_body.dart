import 'package:flutter/material.dart';
import 'package:task_management/core/utils/app_text_styles.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';

class EmptyHomeViewBody extends StatelessWidget {
  const EmptyHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.assetsImagesEmptyList),
          Text(
            S.of(context).emptyHomeTitle,
            style: AppTextStyles.regular26.copyWith(color: AppColors.white),
          ),
          Text(
            S.of(context).emptyHomeDesc,
            style: AppTextStyles.regular20.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
