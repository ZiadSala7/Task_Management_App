import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  static const String id = 'registerView';
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(delay: Duration(seconds: 2), child: RegisterViewBody()),
    );
  }
}
