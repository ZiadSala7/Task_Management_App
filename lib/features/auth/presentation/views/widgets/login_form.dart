import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          S.of(context).userName,
          style: AppTextStyles.regular16.copyWith(color: AppColors.white),
        ),
        SizedBox(height: 10),
        CustomTextFormField(
          onChanged: (value) {},
          title: S.of(context).enterUsername,
        ),
        SizedBox(height: 25),
        Text(
          S.of(context).password,
          style: AppTextStyles.regular16.copyWith(color: AppColors.white),
        ),
        SizedBox(height: 10),
        CustomTextFormField(
          onChanged: (value) {},
          title: S.of(context).enterPassword,
        ),
        SizedBox(height: 70),
      ],
    );
  }
}
