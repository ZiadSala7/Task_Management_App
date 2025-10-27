import 'package:flutter/material.dart';

import '../../../features/home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../../../generated/l10n.dart';
import 'time_wheel.dart';
import 'period_selector.dart';

class CustomTimePicker extends StatefulWidget {
  final TaskHandlerCubit cubit;
  const CustomTimePicker({super.key, required this.cubit});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  int selectedHour = 8;
  int selectedMinute = 20;
  String period = 'AM';

  List<int> hours = List.generate(12, (index) => index + 1);
  List<int> minutes = List.generate(60, (index) => index);

  @override
  Widget build(BuildContext context) {
    widget.cubit.isPMOrAM = period;
    return Dialog(
      backgroundColor: const Color(0xFF2B2B2B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).chooseTime,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(color: Colors.white24, height: 20),
            // ⏰ Time Selection Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeWheel(
                  values: hours,
                  selected: selectedHour,
                  onSelected: (v) => setState(() {
                    selectedHour = v;
                  }),
                ),
                const Text(
                  ":",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                TimeWheel(
                  values: minutes,
                  selected: selectedMinute,
                  onSelected: (v) => setState(() {
                    selectedMinute = v;
                  }),
                  isMinute: true,
                ),
                const SizedBox(width: 10),
                PeriodSelector(
                  period: period,
                  onChanged: (p) => setState(() {
                    period = p;
                    widget.cubit.isPMOrAM = p;
                  }),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () =>
                      Navigator.pop(context, widget.cubit.timeOfDay),
                  child: Text(
                    S.of(context).cancel,
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7C73E6),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    final isPM = period == "PM";
                    int hour24 = (selectedHour % 12) + (isPM ? 12 : 0);
                    TimeOfDay selectedTime = TimeOfDay(
                      hour: hour24,
                      minute: selectedMinute,
                    );
                    widget.cubit.timeOfDay = TimeOfDay(
                      hour: selectedTime.hour,
                      minute: selectedTime.minute,
                    );
                    Navigator.pop(context, widget.cubit.timeOfDay);
                  },
                  child: Text(
                    S.of(context).save,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
