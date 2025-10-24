import 'package:flutter/material.dart';

import '../helper/text_form_field_builder_border.dart';
import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final Function(String)? onChanged;
  const CustomTextFormField({super.key, this.onChanged, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      style: TextStyle(color: AppColors.white, fontSize: 20),
      decoration: InputDecoration(
        focusedBorder: textFormFieldBuildBorder(),
        // enabledBorder: textFormFieldBuildBorder(),
        filled: true,
        fillColor: AppColors.darkGray,
        hintText: title,
        hintStyle: TextStyle(color: AppColors.gray500),
      ),
    );
  }
}
