import 'package:flutter/material.dart';

import '../helper/text_form_field_builder_border.dart';
import '../utils/app_colors.dart';

class DialogTextField extends StatelessWidget {
  final String title;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const DialogTextField({
    super.key,
    this.onChanged,
    required this.title,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      style: TextStyle(color: AppColors.white, fontSize: 20),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.bottomNavClr,
        focusedBorder: textFormFieldFocusBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: AppColors.bottomNavClr),
        ),
        hintText: title,
        hintStyle: TextStyle(color: AppColors.gray200),
      ),
    );
  }
}
