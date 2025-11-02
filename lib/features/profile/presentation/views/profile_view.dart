import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  static const String id = 'profileView';
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).profile,
          style: AppTextStyles.bold19.copyWith(color: AppColors.white),
        ),
        centerTitle: true,
      ),
      body: ProfileViewBody(),
      
    );
  }
}