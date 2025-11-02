import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:task_management/features/dialogs/category/data/category_model.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'category_color_chooser.dart';
import 'category_icon_chooser.dart';
import 'create_or_cancel_category_button.dart';
import 'display_choosen_icon.dart';
import 'single_picker_configuration_method.dart';

class AddCategoryViewBody extends StatefulWidget {
  const AddCategoryViewBody({super.key});

  @override
  State<AddCategoryViewBody> createState() => _AddCategoryViewBodyState();
}

class _AddCategoryViewBodyState extends State<AddCategoryViewBody> {
  IconData? selectedIcon;
  String catName = '';
  Color selectedColor = AppColors.allAppColors[0];

  Future<void> pickIcon() async {
    final iconPickerIcon = await showIconPicker(
      context,
      configuration: singlePickerConfigurationMethod(context),
    );

    if (iconPickerIcon != null) {
      setState(() {
        selectedIcon = iconPickerIcon.data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        // to remove the keyboard while scrolling
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(S.of(context).catName, style: AppTextStyles.regular18),
            CustomTextFormField(
              title: S.of(context).catName,
              onChanged: (value) {
                catName = value;
              },
            ),
            Text(S.of(context).catIcon, style: AppTextStyles.regular18),
            // for the choosenIcon to choose and display
            selectedIcon != null
                ? DisplayChoosenIcon(onTap: pickIcon, icon: selectedIcon!)
                : CategoryIconChooser(onPressed: pickIcon),

            Text(S.of(context).catClr, style: AppTextStyles.regular18),
            CategoryColorChooser(
              onChange: (Color color) {
                selectedColor = color;
              },
            ),
            const SizedBox(height: 270),
            CreateOrCancelCategoryButtons(
              model: selectedIcon != null && catName != ''
                  ? CategoryModel(
                      name: catName,
                      icon: selectedIcon!,
                      color: selectedColor,
                    )
                  : null,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
