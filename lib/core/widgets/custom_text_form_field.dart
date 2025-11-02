import 'package:flutter/material.dart';

import '../helper/text_form_field_builder_border.dart';
import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String title, initVal;
  final Function(String)? onChanged;
  final bool hasPrefix;
  const CustomTextFormField({
    super.key,
    this.onChanged,
    required this.title,
    this.hasPrefix = false,
    this.initVal = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initVal,
      onChanged: onChanged,
      style: TextStyle(color: AppColors.white, fontSize: 20),
      decoration: InputDecoration(
        focusedBorder: textFormFieldFocusBorder(),
        enabledBorder: textFormFieldOutlineBorder(),
        filled: true,
        fillColor: AppColors.darkGray,
        hintText: title,
        hintStyle: TextStyle(color: AppColors.gray500),
        prefixIcon: hasPrefix
            ? Icon(Icons.search, color: AppColors.gray500)
            : null,
      ),
    );
  }
}
