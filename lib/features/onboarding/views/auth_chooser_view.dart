import 'package:flutter/material.dart';

import 'widget/auth_chooser_view_body.dart';

class AuthChooserView extends StatelessWidget {
  static const String id = 'authChooserView';
  const AuthChooserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AuthChooserViewBody());
  }
}
