import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/task_model.dart';
import 'task_handler_states.dart';

class TaskHandlerCubit extends Cubit<TaskHandlerStates> {
  String taskTitle = '',
      taskDesc = '',
      catName = '',
      isPMOrAM = DateTime.now().hour > 12 ? 'PM' : 'AM';
  Color catClr = AppColors.white;
  DateTime? time = DateTime.now();
  TimeOfDay? timeOfDay = TimeOfDay(
    hour: DateTime.now().hour > 12
        ? DateTime.now().hour % 12
        : DateTime.now().hour,
    minute: DateTime.now().minute,
  );
  TaskHandlerCubit() : super(InitialState());
  List<TaskModel> tasks = [];
  initList() {
    // here we will get the list from api or local database
    // here to emit state of the list
    emit(tasks.isEmpty ? EmptyState() : HasStates());
  }

  addTask() {
    // we will recieve a model of a task and put it in the database
    TaskModel model = TaskModel(
      taskTitle: taskTitle,
      taskDescription: taskDesc,
      catName: catName,
      categoryClr: catClr,
      time: time!,
      pmOram: isPMOrAM,
      timeOfDay: timeOfDay!,
    );
    tasks.add(model);
    // now we will init list again
    initList();
  }

  deleteTask() {
    // we will recieve a model to delete it from databse
    // now we will init list again
  }
}




    // TaskModel(
    //   taskTitle: 'Uptodo figma app',
    //   taskDescription: 'finishing the card of the task',
    //   catName: 'Flutter',
    //   categoryClr: AppColors.skyBlue,
    //   time: DateTime.now(),
    //   pmOram: '',
    // ),
    // TaskModel(
    //   taskTitle: 'ITIDA Eyouth',
    //   taskDescription: 'finishing 2 gigs task',
    //   catName: 'Freelancer',
    //   categoryClr: AppColors.skyBlue,
    //   time: DateTime.now(),
    //   pmOram: '',
    // ),
    // TaskModel(
    //   taskTitle: 'Uptodo figma app',
    //   taskDescription: 'finishing the card of the task',
    //   catName: 'Flutter',
    //   categoryClr: AppColors.skyBlue,
    //   time: DateTime.now(),
    //   pmOram: '',
    // ),