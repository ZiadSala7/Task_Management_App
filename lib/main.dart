import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/managers/task_cubit/task_handler_cubit.dart';
import 'task_management_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TaskHandlerCubit()..initList()),
      ],
      child: const TaskManagementApp(),
    ),
  );
}
