import 'package:flutter/material.dart';

class PeriodSelector extends StatelessWidget {
  final String period;
  final ValueChanged<String> onChanged;

  const PeriodSelector({
    super.key,
    required this.period,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildButton("AM"),
        const SizedBox(height: 5),
        _buildButton("PM"),
      ],
    );
  }

  Widget _buildButton(String label) {
    final isActive = label == period;
    return GestureDetector(
      onTap: () => onChanged(label),
      child: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFF7C73E6) : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.white54,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
