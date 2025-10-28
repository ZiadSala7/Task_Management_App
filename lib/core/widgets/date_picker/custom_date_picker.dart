import 'package:flutter/material.dart';

import '../timer_picker/custom_timer_picker.dart';
import '../../utils/app_colors.dart';
import 'date_picker_header.dart';
import 'date_picker_calendar.dart';
import 'date_picker_actions.dart';

class CustomDatePickerDialog extends StatefulWidget {
  const CustomDatePickerDialog({super.key});

  @override
  State<CustomDatePickerDialog> createState() => _CustomDatePickerDialogState();
}

class _CustomDatePickerDialogState extends State<CustomDatePickerDialog> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFF2B2B2B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DatePickerHeader(
              focusedDay: focusedDay,
              onMonthChanged: (newDate) => setState(() => focusedDay = newDate),
              onYearPicked: (year) => setState(() {
                focusedDay = DateTime(year, focusedDay.month);
              }),
            ),
            Divider(thickness: 0.5, color: AppColors.gray300),
            const SizedBox(height: 8),
            DatePickerCalendar(
              focusedDay: focusedDay,
              selectedDay: selectedDay,
              onDaySelected: (selected, focused) {
                setState(() {
                  selectedDay = selected;
                  focusedDay = focused;
                });
              },
            ),
            const SizedBox(height: 12),
            DatePickerActions(
              onCancel: () => Navigator.pop(context, focusedDay),
              onChooseTime: () async {
                // return TimeOfDay if found
                final data = await showDialog<TimeOfDay>(
                  context: context,
                  builder: (_) => CustomTimePicker(),
                );
                // adding time to DateTime
                focusedDay.add(
                  Duration(hours: data!.hour, minutes: data.minute),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
