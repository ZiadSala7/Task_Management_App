// Year picker dialog
import 'package:flutter/material.dart';

class YearPickerDialog extends StatefulWidget {
  final int initialYear;
  const YearPickerDialog({super.key, required this.initialYear});

  @override
  State<YearPickerDialog> createState() => _YearPickerDialogState();
}

class _YearPickerDialogState extends State<YearPickerDialog> {
  late int selectedYear;

  @override
  void initState() {
    super.initState();
    selectedYear = widget.initialYear;
  }

  @override
  Widget build(BuildContext context) {
    final years = List.generate(101, (index) => 2000 + index);
    return Dialog(
      backgroundColor: const Color(0xFF2B2B2B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: years.length,
          itemBuilder: (_, index) {
            final year = years[index];
            return ListTile(
              title: Center(
                child: Text(
                  "$year",
                  style: TextStyle(
                    color: year == selectedYear
                        ? const Color(0xFF7C73E6)
                        : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () => Navigator.pop(context, year),
            );
          },
        ),
      ),
    );
  }
}
