import 'package:flutter/material.dart';

class TimeNumberPicker extends StatelessWidget {
  final int currentValue;
  final int minValue;
  final int maxValue;
  final ValueChanged<int> onChanged;

  const TimeNumberPicker({
    super.key,
    required this.currentValue,
    required this.minValue,
    required this.maxValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 40,
        diameterRatio: 1.5,
        physics: const FixedExtentScrollPhysics(),
        onSelectedItemChanged: (index) => onChanged(minValue + index),
        controller: FixedExtentScrollController(
          initialItem: currentValue - minValue,
        ),
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            final value = minValue + index;
            return Text(
              value.toString().padLeft(2, '0'),
              style: TextStyle(
                color: value == currentValue ? Colors.white : Colors.grey,
                fontSize: 22,
              ),
            );
          },
          childCount: maxValue - minValue + 1,
        ),
      ),
    );
  }
}
