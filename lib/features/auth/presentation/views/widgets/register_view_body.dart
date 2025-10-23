import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../login_view.dart';
import 'have_account_or_not_widget.dart';
import 'register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(S.of(context).register, style: AppTextStyles.bold32),
            SizedBox(height: 50),
            RegisterForm(),
            CustomButton(
              onPressed: () {},
              title: S.of(context).register,
              isActive: false, // by default
            ),
            SizedBox(height: 50),
            HaveAccountOrNotWidget(
              textTitle: S.of(context).doNotHave,
              btnTitle: S.of(context).loginView,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginView.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
