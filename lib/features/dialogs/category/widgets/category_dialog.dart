import 'package:flutter/material.dart';
import 'package:task_management/core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import '../../../add_category/presentation/views/add_category_view.dart';
import '../data/category_model.dart';
import 'category_item.dart';

class CategoryDialog extends StatelessWidget {
  const CategoryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFF2E2E2E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Choose Category",
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
                  onTap: () => Navigator.pop(context, categories[index]),
                );
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 65,
              width: double.infinity,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AddCategoryView.id);
                },
                title: S.of(context).addCategory,
                isActive: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
