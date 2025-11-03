import 'package:flutter/material.dart';

import 'features/calendar/presentation/views/calendar_view.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/profile/presentation/views/profile_view.dart';

const String fontFamily = 'Lato';
PageController controller = PageController();

final List<Widget> pages = const [
  HomeView(),
  CalendarView(),
  Text('Focus'),
  ProfileView(),
];

int taskPriority = 1;
