import 'package:flutter/material.dart';

class AmPmSelector extends StatelessWidget {
  final bool isAm;
  final ValueChanged<bool> onChanged;

  const AmPmSelector({super.key, required this.isAm, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onChanged(true),
            child: Text(
              "AM",
              style: TextStyle(
                color: isAm ? Colors.white : Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 4),
          GestureDetector(
            onTap: () => onChanged(false),
            child: Text(
              "PM",
              style: TextStyle(
                color: !isAm ? Colors.white : Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
