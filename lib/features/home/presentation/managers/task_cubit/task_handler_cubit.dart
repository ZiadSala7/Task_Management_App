import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/task_model.dart';
import 'task_handler_states.dart';

class TaskHandlerCubit extends Cubit<TaskHandlerStates> {
  TaskHandlerCubit() : super(InitialState());
  List<TaskModel> tasks = [
    TaskModel(
      taskTitle: 'Uptodo figma app',
      taskDetails: 'finishing the card of the task',
      category: 'Flutter',
      categoryClr: AppColors.skyBlue,
      time: DateTime.now(),
    ),
    TaskModel(
      taskTitle: 'ITIDA Eyouth',
      taskDetails: 'finishing 2 gigs task',
      category: 'Freelancer',
      categoryClr: AppColors.skyBlue,
      time: DateTime.now(),
    ),
    TaskModel(
      taskTitle: 'Uptodo figma app',
      taskDetails: 'finishing the card of the task',
      category: 'Flutter',
      categoryClr: AppColors.skyBlue,
      time: DateTime.now(),
    ),
  ];
  initList() {
    // here we will get the list from api or local database
    // here to emit state of the list
    emit(tasks.isEmpty ? EmptyState() : HasStates());
  }

  addTask() {
    // we will recieve a model of a task and put it in the database
    // now we will init list again
    initList();
  }

  deleteTask() {
    // we will recieve a model to delete it from databse
    // now we will init list again
  }
}
