import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentation/managers/task_cubit/task_handler_cubit.dart';
import '../../../home/presentation/views/widgets/display_list_of_tasks.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import 'widgets/calendar_header.dart';
import 'widgets/calendar_switch_buttons.dart';

class CalendarView extends StatefulWidget {
  static const String id = 'calendarView';
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime _selectedDate = DateTime.now();
  int switchValue = 1;

  void _onDateChanged(DateTime date) {
    setState(() => _selectedDate = date);
  }

  void _onSwitchChanged(int value) {
    setState(() => switchValue = value);
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<TaskHandlerCubit>();
    return FadeIn(
      delay: Duration(milliseconds: 300),
      child: Scaffold(
        backgroundColor: const Color(0xff1c1c1e),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            S.of(context).calendar,
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: AppColors.white60,
          width: double.infinity,
          child: ListView(
            children: [
              CalendarHeader(
                selectedDate: _selectedDate,
                onDateChanged: _onDateChanged,
              ),
              CalendarSwitchButtons(
                switchValue: switchValue,
                onSwitchChanged: _onSwitchChanged,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DisplayListOfTasks(
                  isVisible: true,
                  tasks: switchValue == 1
                      ? cubit.todayTasks
                      : cubit.completedTasks,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
