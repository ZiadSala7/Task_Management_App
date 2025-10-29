import 'package:flutter/material.dart';

import 'widgets/add_category_view_body.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';

class AddCategoryView extends StatelessWidget {
  static const String id = 'addCatView';
  const AddCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      onPanDown: (_) => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).createCategory,
            style: AppTextStyles.bold19.copyWith(color: AppColors.white),
          ),
          centerTitle: false,
        ),
        body: AddCategoryViewBody(),
      ),
    );
  }
}
