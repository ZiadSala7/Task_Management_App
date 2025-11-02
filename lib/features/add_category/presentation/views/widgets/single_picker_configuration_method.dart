import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/Models/configuration.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

SinglePickerConfiguration singlePickerConfigurationMethod(BuildContext context) {
  return SinglePickerConfiguration(
    title: Text(S.of(context).chooseAnIcon, style: AppTextStyles.bold23),
    iconPackModes: iconPackModesList, // يمكنك إضافة FontAwesome أيضًا
    showSearchBar: true,
    adaptiveDialog: false,
    backgroundColor: AppColors.bottomNavClr,
  );
}

List<IconPack> get iconPackModesList {
  return [
    IconPack.fontAwesomeIcons,
    IconPack.cupertino,
    IconPack.material,
    IconPack.allMaterial,
    IconPack.lineAwesomeIcons,
  ];
}
