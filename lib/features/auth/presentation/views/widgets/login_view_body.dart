import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../register_view.dart';
import 'custom_or_divider.dart';
import 'have_account_or_not_widget.dart';
import 'login_form.dart';
import 'social_media_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(S.of(context).loginView, style: AppTextStyles.bold32),
            SizedBox(height: 50),
            LoginForm(),
            CustomButton(
              onPressed: () {},
              title: S.of(context).loginView,
              isActive: false, // by default
            ),
            SizedBox(height: 35),
            CustomOrDivider(),
            SizedBox(height: 30),
            SocialMediaButtonLogin(
              icon: AppAssets.assetsImagesGoogle,
              title: S.of(context).logWithGoogle,
              onPressed: () {},
            ),
            SizedBox(height: 20),
            SocialMediaButtonLogin(
              icon: AppAssets.assetsImagesApple,
              title: S.of(context).logWithApple,
              onPressed: () {},
            ),
            SizedBox(height: 50),
            HaveAccountOrNotWidget(
              textTitle: S.of(context).doNotHave,
              btnTitle: S.of(context).register,
              onPressed: () {
                Navigator.of(context).pushNamed(RegisterView.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
