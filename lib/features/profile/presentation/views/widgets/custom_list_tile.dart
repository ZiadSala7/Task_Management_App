import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/list_tile_model.dart';

class CustomListTile extends StatelessWidget {
  final ListTileModel listTileModel;
  const CustomListTile({super.key, required this.listTileModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: listTileModel.onPressed,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(
          listTileModel.leadingIcon,
          color: listTileModel.title == S.of(context).logOut
              ? AppColors.dangerRed
              : AppColors.white,
        ),
        title: Text(
          listTileModel.title,
          style: AppTextStyles.regular16.copyWith(
            color: listTileModel.title == S.of(context).logOut
                ? AppColors.dangerRed
                : AppColors.white,
          ),
        ),
        trailing: listTileModel.title == S.of(context).logOut
            ? null
            : Icon(Icons.keyboard_arrow_right, color: AppColors.white),
      ),
    );
  }
}
