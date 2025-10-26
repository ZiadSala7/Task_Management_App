import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

OutlineInputBorder textFormFieldOutlineBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.gray400, width: 0.5),
  );
}

OutlineInputBorder textFormFieldFocusBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.gray400, width: 1.5),
  );
}
