import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/task_model.dart';
import 'task_handler_states.dart';

class TaskHandlerCubit extends Cubit<TaskHandlerStates> {
  String taskTitle = '', taskDesc = '', catName = '';
  TaskHandlerCubit() : super(InitialState());
  List<TaskModel> tasks = [];
  initList() {
    // here we will get the list from api or local database
    // here to emit state of the list
    emit(tasks.isEmpty ? EmptyState() : HasStates());
  }

  createAndAddTaskToList(DateTime? time) {
    TaskModel model = TaskModel(
      taskTitle: taskTitle,
      taskDescription: taskDesc,
      catName: catName,
      categoryClr: Colors.white,
      time: time!,
      pmOram: time.hour < 12 || time.hour == 24 ? 'AM' : 'PM',
      dateTimeNow: DateTime.now(),
    );

    addTaskToList(model);
  }

  addTaskToList(TaskModel model) {
    // we will recieve a model of a task and put it in the database
    tasks.add(model);
    // now we will init list again
    initList();
  }

  deleteTask(TaskModel model) {
    // we will recieve a model to delete it from databse
    tasks.remove(model);
    // now we will init list again
  }
}
