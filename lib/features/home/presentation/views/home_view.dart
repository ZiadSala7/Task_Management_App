import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import 'widgets/empty_home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String id = 'homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).taskaty,
          style: AppTextStyles.bold19.copyWith(color: AppColors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.filter_list_outlined),
        ),
        actions: [ClipOval(child: Image.asset(AppAssets.assetsImagesAvatar))],
      ),
      body: EmptyHomeViewBody(),
    );
  }
}
