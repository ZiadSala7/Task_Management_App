import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../search_view.dart';

class FakeSearchField extends StatelessWidget {
  const FakeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SearchView.id);
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          border: BoxBorder.all(color: AppColors.gray400, width: 1.5),
        ),
        child: Center(
          child: ListTile(
            leading: Icon(Icons.search, color: AppColors.gray500),
            title: Text(
              S.of(context).searchForTask,
              style: TextStyle(color: AppColors.gray500, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
