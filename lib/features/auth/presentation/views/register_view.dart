import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  static const String id = 'registerView';
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FadeIn(
        delay: Duration(milliseconds: 500),
        child: RegisterViewBody(),
      ),
    );
  }
}
