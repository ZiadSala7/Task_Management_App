import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:intl/intl.dart';

class CalendarHeader extends StatelessWidget {
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateChanged;

  const CalendarHeader({
    super.key,
    required this.selectedDate,
    required this.onDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLinePicker(
      locale: Locale(Intl.getCurrentLocale()),
      firstDate: DateTime(2024, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      selectionMode: SelectionMode.autoCenter(),
      focusedDate: selectedDate,
      onDateChange: (date) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          onDateChanged(date);
        });
      },
    );
  }
}
