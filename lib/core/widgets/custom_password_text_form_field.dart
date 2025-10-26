import 'package:flutter/material.dart';

import '../helper/text_form_field_builder_border.dart';
import '../utils/app_colors.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String title;
  final Function(String)? onChanged;
  const CustomPasswordTextFormField({
    super.key,
    this.onChanged,
    required this.title,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isActive,
      onChanged: (value) {},
      style: TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isActive = !isActive;
            });
          },
          icon: Icon(
            isActive ? Icons.visibility_off : Icons.visibility,
            color: !isActive ? AppColors.white : null,
          ),
        ),
        focusedBorder: textFormFieldFocusBorder(),
        enabledBorder: textFormFieldOutlineBorder(),
        filled: true,
        fillColor: AppColors.darkGray,
        hintText: widget.title,
        hintStyle: TextStyle(color: AppColors.gray500),
      ),
    );
  }
}
