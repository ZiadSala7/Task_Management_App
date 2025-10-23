import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  static const String id = 'loginView';
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.black),
      body: FadeIn(delay: Duration(seconds: 1), child: LoginViewBody()),
    );
  }
}
