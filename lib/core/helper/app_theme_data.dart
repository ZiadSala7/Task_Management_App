import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/app_colors.dart';

ThemeData appThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    fontFamily: fontFamily,
    iconTheme: IconThemeData(color: AppColors.white),
    appBarTheme: AppBarThemeData(
      iconTheme: IconThemeData(color: AppColors.white),
    ),
  );
}
