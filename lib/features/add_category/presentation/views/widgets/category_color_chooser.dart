import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'color_choosen_widget.dart';

class CategoryColorChooser extends StatefulWidget {
  final Function(Color) onChange;
  const CategoryColorChooser({super.key, required this.onChange});

  @override
  State<CategoryColorChooser> createState() => _CategoryColorChooserState();
}

class _CategoryColorChooserState extends State<CategoryColorChooser> {
  int currentIndex = 0;
  Color choosenClr = AppColors.allAppColors[0];
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
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    choosenClr = AppColors.allAppColors[index];
                    widget.onChange(choosenClr);
                    currentIndex = index;
                  });
                },
                child: ColorChoosenWidget(
                  isChoosen: currentIndex == index,
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
