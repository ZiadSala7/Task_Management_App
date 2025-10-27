import 'package:flutter/material.dart';

class TimeWheel extends StatelessWidget {
  final List<int> values;
  final int selected;
  final ValueChanged<int> onSelected;
  final bool isMinute;

  const TimeWheel({
    super.key,
    required this.values,
    required this.selected,
    required this.onSelected,
    this.isMinute = false,
  });

  @override
  Widget build(BuildContext context) {
    final controller = FixedExtentScrollController(
      initialItem: selected % values.length,
    );

    return SizedBox(
      width: 70,
      height: 120,
      child: ListWheelScrollView.useDelegate(
        controller: controller,
        itemExtent: 36,
        physics: const FixedExtentScrollPhysics(),
        diameterRatio: 1.6,
        onSelectedItemChanged: (index) => onSelected(values[index]),
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: values.length,
          builder: (context, index) {
            final value = values[index];
            final isSelected = value == selected;
            return Center(
              child: Text(
                value.toString().padLeft(2, '0'),
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.white54,
                  fontSize: isSelected ? 22 : 18,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
