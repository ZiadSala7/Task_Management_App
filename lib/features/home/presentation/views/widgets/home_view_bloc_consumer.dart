import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../managers/task_cubit/task_handler_cubit.dart';
import '../../managers/task_cubit/task_handler_states.dart';
import 'empty_home_view_body.dart';
import 'has_state_home_view_body.dart';

class HomeViewBlocConsumer extends StatelessWidget {
  const HomeViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskHandlerCubit, TaskHandlerStates>(
      builder: (BuildContext context, state) {
        return state is EmptyState
            ? EmptyHomeViewBody()
            : HasStateHomeViewBody(
                tasks: BlocProvider.of<TaskHandlerCubit>(context).tasks,
              );
      },
      listener: (BuildContext context, state) {},
    );
  }
}
