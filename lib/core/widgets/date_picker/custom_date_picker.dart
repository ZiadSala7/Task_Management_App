import 'package:flutter/material.dart';

import '../../../features/home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../../utils/app_colors.dart';
import '../timer_picker/custom_timer_picker.dart';
import 'date_picker_header.dart';
import 'date_picker_calendar.dart';
import 'date_picker_actions.dart';

class CustomDatePickerDialog extends StatefulWidget {
  final TaskHandlerCubit cubit;
  const CustomDatePickerDialog({super.key, required this.cubit});

  @override
  State<CustomDatePickerDialog> createState() => _CustomDatePickerDialogState();
}

class _CustomDatePickerDialogState extends State<CustomDatePickerDialog> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    widget.cubit.time = focusedDay;
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
                widget.cubit.time = focusedDay;
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
                  widget.cubit.time = focusedDay;
                });
              },
            ),
            const SizedBox(height: 12),
            DatePickerActions(
              onCancel: () => Navigator.pop(context, widget.cubit.time),
              onChooseTime: () async {
                final data = await showDialog<TimeOfDay>(
                  context: context,
                  builder: (_) => CustomTimePicker(cubit: widget.cubit),
                );
                widget.cubit.timeOfDay = data;
              },
            ),
          ],
        ),
      ),
    );
  }
}
