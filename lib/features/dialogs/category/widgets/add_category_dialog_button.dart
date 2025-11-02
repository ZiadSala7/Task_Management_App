import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import '../../../add_category/presentation/views/add_category_view.dart';

class AddCategoryDialogButton extends StatelessWidget {
  const AddCategoryDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(AddCategoryView.id);
        },
        title: S.of(context).addCategory,
        isActive: true,
      ),
    );
  }
}
