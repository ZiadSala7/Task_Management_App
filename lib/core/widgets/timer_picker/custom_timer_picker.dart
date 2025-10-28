import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';
import 'am_pm_selector.dart';
import 'time_number_picker.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({super.key});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  int selectedHour = 8;
  int selectedMinute = 20;
  bool isAm = true;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFF2D2D2D),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 🏷️ Title
            const Text(
              "Choose Time",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const Divider(color: Colors.grey),
            const SizedBox(height: 12),
            // 🔢 Time Picker Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeNumberPicker(
                  currentValue: selectedHour,
                  minValue: 1,
                  maxValue: 12,
                  onChanged: (v) => setState(() => selectedHour = v),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    ":",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
                TimeNumberPicker(
                  currentValue: selectedMinute,
                  minValue: 0,
                  maxValue: 59,
                  onChanged: (v) => setState(() => selectedMinute = v),
                ),
                const SizedBox(width: 12),
                AmPmSelector(
                  isAm: isAm,
                  onChanged: (value) => setState(() => isAm = value),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // ⚙️ Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Color(0xFF9BA5F8), fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9BA5F8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                  ),
                  onPressed: () {
                    // Convert to 24-hour format
                    int hour24 = isAm
                        ? (selectedHour == 12 ? 0 : selectedHour)
                        : (selectedHour == 12 ? 12 : selectedHour + 12);

                    Navigator.pop(
                      context,
                      TimeOfDay(hour: hour24, minute: selectedMinute),
                    );
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
