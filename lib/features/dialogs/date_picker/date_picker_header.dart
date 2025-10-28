import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'year_picker_dialog.dart';

class DatePickerHeader extends StatelessWidget {
  final DateTime focusedDay;
  final ValueChanged<DateTime> onMonthChanged;
  final ValueChanged<int> onYearPicked;

  const DatePickerHeader({
    super.key,
    required this.focusedDay,
    required this.onMonthChanged,
    required this.onYearPicked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () {
            onMonthChanged(DateTime(focusedDay.year, focusedDay.month - 1));
          },
        ),
        TextButton(
          onPressed: () async {
            final pickedYear = await showDialog<int>(
              context: context,
              builder: (_) => YearPickerDialog(initialYear: focusedDay.year),
            );
            if (pickedYear != null) onYearPicked(pickedYear);
          },
          child: Text(
            DateFormat.yMMMM().format(focusedDay),
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.chevron_right, color: Colors.white),
          onPressed: () {
            onMonthChanged(DateTime(focusedDay.year, focusedDay.month + 1));
          },
        ),
      ],
    );
  }
}
