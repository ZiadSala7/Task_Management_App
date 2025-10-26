import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

AppBar homeViewAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      S.of(context).taskaty,
      style: AppTextStyles.bold19.copyWith(color: AppColors.white),
    ),
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.filter_list_outlined),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ClipOval(
          child: Image.asset(AppAssets.assetsImagesAvatar, height: 45),
        ),
      ),
    ],
  );
}
