import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  static const String id = 'registerView';
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.black),
      body: FadeIn(
        delay: Duration(milliseconds: 500),
        child: RegisterViewBody(),
      ),
    );
  }
}
