import 'package:flutter/material.dart';

import 'core/helper/app_theme_data.dart';
import 'core/helper/localization_delegates_list.dart';
import 'core/helper/all_app_routes.dart';
import 'core/widgets/build_navigation_bar.dart';
import 'generated/l10n.dart';

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: BuildNavigationBar.id,
      routes: allAppRoutes,
      locale: Locale('en'),
      localizationsDelegates: localizationDelegatesList,
      supportedLocales: S.delegate.supportedLocales,
      theme: appThemeData(),
    );
  }
}
