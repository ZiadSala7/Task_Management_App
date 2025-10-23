import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import '../../../auth/presentation/views/login_view.dart';
import '../../../auth/presentation/views/register_view.dart';

class AuthChooserViewBody extends StatelessWidget {
  const AuthChooserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              S.of(context).authChooserTitle,
              style: AppTextStyles.bold32,
              textAlign: TextAlign.center,
            ),
            Text(
              S.of(context).authChooserDesc,
              textAlign: TextAlign.center,
              style: AppTextStyles.regular18.copyWith(color: AppColors.gray200),
            ),
            Expanded(child: SizedBox()),
            CustomButton(
              isActive: true,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginView.id);
              },
              title: S.of(context).login,
            ),
            CustomButton(
              isActive: true,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(RegisterView.id);
              },
              title: S.of(context).createAccount,
              background: AppColors.black,
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
