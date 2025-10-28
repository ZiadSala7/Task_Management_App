import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePickerCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;

  const DatePickerCalendar({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: focusedDay,
      firstDay: DateTime(2000),
      lastDay: DateTime(2100),
      selectedDayPredicate: (day) => isSameDay(selectedDay, day),
      onDaySelected: onDaySelected,
      calendarFormat: CalendarFormat.month,
      headerVisible: false,
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.white70),
        weekendStyle: TextStyle(color: Colors.redAccent),
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: const TextStyle(color: Colors.white70),
        weekendTextStyle: const TextStyle(color: Colors.redAccent),
        selectedDecoration: BoxDecoration(
          color: Color(0xFF7C73E6),
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          border: Border.all(color: Color(0xFF7C73E6)),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
