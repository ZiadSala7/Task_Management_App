import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/Models/configuration.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'category_color_chooser.dart';
import 'category_icon_chooser.dart';
import 'create_or_cancel_category_button.dart';
import 'display_choosen_icon.dart';

class AddCategoryViewBody extends StatefulWidget {
  const AddCategoryViewBody({super.key});

  @override
  State<AddCategoryViewBody> createState() => _AddCategoryViewBodyState();
}

class _AddCategoryViewBodyState extends State<AddCategoryViewBody> {
  IconData? selectedIcon;

  Future<void> pickIcon() async {
    final iconPickerIcon = await showIconPicker(
      context,
      configuration: const SinglePickerConfiguration(
        title: Text('Choose an Icon', style: AppTextStyles.bold23),
        iconPackModes: [
          IconPack.fontAwesomeIcons,
          IconPack.material,
          IconPack.allMaterial,
          IconPack.cupertino,
        ], // يمكنك إضافة FontAwesome أيضًا
        showSearchBar: true,
        adaptiveDialog: false,
        backgroundColor: AppColors.bottomNavClr,
      ),
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
        // لإخفاء الكيبورد عند السحب
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(S.of(context).catName, style: AppTextStyles.regular18),
            CustomTextFormField(
              title: S.of(context).catName,
              onChanged: (value) {},
            ),

            Text(S.of(context).catIcon, style: AppTextStyles.regular18),
            // 👇 هنا نعرض الأيقونة المختارة أو زر الإضافة
            selectedIcon != null
                ? DisplayChoosenIcon(onTap: pickIcon, icon: selectedIcon!)
                : CategoryIconChooser(onPressed: pickIcon),

            Text(S.of(context).catClr, style: AppTextStyles.regular18),
            const CategoryColorChooser(),
            const SizedBox(height: 270),
            const CreateOrCancelCategoryButtons(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
