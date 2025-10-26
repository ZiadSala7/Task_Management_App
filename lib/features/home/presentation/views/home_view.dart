import 'package:flutter/material.dart';

import 'widgets/home_view_appbar.dart';
import 'widgets/home_view_bloc_consumer.dart';

class HomeView extends StatelessWidget {
  static const String id = 'homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeViewAppBar(context),
      body: HomeViewBlocConsumer(),
    );
  }
}
