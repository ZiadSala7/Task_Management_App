import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class DatePickerActions extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onChooseTime;

  const DatePickerActions({
    super.key,
    required this.onCancel,
    required this.onChooseTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onCancel,
          child: const Text("Cancel", style: TextStyle(color: Colors.white70)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF7C73E6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onChooseTime,
          child: Text(
            S.of(context).chooseTime,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
