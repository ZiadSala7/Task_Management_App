import 'package:flutter/material.dart';

import 'features/home/presentation/views/home_view.dart';

const String fontFamily = 'Lato';
PageController controller = PageController();

final List<Widget> pages = const [
  HomeView(),
  Text('Calendar'),
  Text('Focus'),
  Text('Profile'),
];

int taskPriority = 1;
