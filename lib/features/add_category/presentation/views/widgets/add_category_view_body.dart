import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'category_color_chooser.dart';
import 'category_icon_chooser.dart';
import 'create_or_cancel_category_button.dart';

class AddCategoryViewBody extends StatelessWidget {
  const AddCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(S.of(context).catName, style: AppTextStyles.regular18),
            CustomTextFormField(
              title: S.of(context).catName,
              onChanged: (value) {},
            ),
            SizedBox(),
            Text(S.of(context).catIcon, style: AppTextStyles.regular18),
            CategoryIconChooser(),
            SizedBox(),
            Text(S.of(context).catClr, style: AppTextStyles.regular18),
            CategoryColorChooser(),
            SizedBox(height: 270),
            CreateOrCancelCategoryButtons(),
          ],
        ),
      ),
    );
  }
}
