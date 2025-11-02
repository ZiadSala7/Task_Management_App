import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../add_category/presentation/managers/cubit/category_cubit/category_cubit.dart';
import '../../../add_category/presentation/managers/cubit/category_cubit/category_states.dart';
import '../data/category_model.dart';
import 'add_category_dialog_button.dart';
import 'category_item.dart';

class CategoryDialog extends StatelessWidget {
  const CategoryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryCubit, CategoryStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Dialog(
          backgroundColor: const Color(0xFF2E2E2E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.of(context).chooseCategory,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Divider(color: Colors.white24, height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryItem(
                      category: categories[index],
                      onTap: () {
                        context.read<CategoryCubit>().initCategory(
                          categories[index],
                        );
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
                const SizedBox(height: 20),
                AddCategoryDialogButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
