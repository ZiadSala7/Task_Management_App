import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../generated/l10n.dart';
import 'card_task_priority.dart';

class PriorityDialog extends StatefulWidget {
  const PriorityDialog({super.key});

  @override
  State<PriorityDialog> createState() => _PriorityDialogState();
}

class _PriorityDialogState extends State<PriorityDialog> {
  int currentIndex = 1;
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
            Text(
              S.of(context).priority,
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
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 15,
                childAspectRatio: 5 / 5.2,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      taskPriority = currentIndex;
                    });
                  },
                  child: CardTaskPriority(
                    index: ++index,
                    isActive: currentIndex == index,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 65,
              width: double.infinity,
              child: CustomButton(
                onPressed: () => Navigator.of(context).pop(),
                title: S.of(context).save,
                isActive: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
