import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CategoryColorChooser extends StatelessWidget {
  const CategoryColorChooser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            AppColors.allAppColors.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ClipOval(
                child: Container(
                  height: 40,
                  width: 40,
                  color: AppColors.allAppColors[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
