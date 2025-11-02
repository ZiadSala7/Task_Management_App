import 'package:flutter/material.dart';
import 'package:task_management/core/utils/app_text_styles.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/list_tile_model.dart';
import 'custom_list_tile.dart';
import 'custom_text_alignment.dart';
import 'task_done_or_left_widget.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          CircleAvatar(
            radius: 43,
            child: ClipOval(child: Image.asset(AppAssets.assetsImagesAvatar)),
          ),
          SizedBox(height: 10),
          Text(
            'Ziad Salah',
            textAlign: TextAlign.center,
            style: AppTextStyles.bold19.copyWith(color: AppColors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TaskDoneOrLeftWidget(num: '10', isDone: true),
              TaskDoneOrLeftWidget(num: '5', isDone: false),
            ],
          ),
          SizedBox(height: 32),
          CustomTextAlignment(text: S.of(context).settings),
          CustomListTile(listTileModel: settingModel(context)),
          SizedBox(height: 16),
          CustomTextAlignment(text: S.of(context).acc),
          Column(
            children: List.generate(
              accountModels(context).length,
              (index) =>
                  CustomListTile(listTileModel: accountModels(context)[index]),
            ),
          ),
          SizedBox(height: 16),
          CustomTextAlignment(text: S.of(context).upTodo),
          Column(
            children: List.generate(
              upTodo(context).length,
              (index) => CustomListTile(listTileModel: upTodo(context)[index]),
            ),
          ),
          SizedBox(height: 16),
          CustomListTile(listTileModel: logOut(context)),
        ],
      ),
    );
  }
}
