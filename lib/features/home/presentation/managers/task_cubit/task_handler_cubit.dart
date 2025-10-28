import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/core/utils/app_colors.dart';

import '../../../data/models/task_model.dart';
import 'task_handler_states.dart';

class TaskHandlerCubit extends Cubit<TaskHandlerStates> {
  String taskTitle = '', taskDesc = '', catName = '';
  TaskHandlerCubit() : super(InitialState());
  List<TaskModel> todayTasks = [];
  List<TaskModel> completedTasks = [];
  initList() {
    // here we will get the list from api or local database
    // here to emit state of the list
    emit(
      todayTasks.isEmpty && completedTasks.isEmpty ? EmptyState() : HasStates(),
    );
  }

  createAndAddTaskToList(DateTime? time) {
    time = time ?? DateTime.now();
    TaskModel model = TaskModel(
      taskTitle: taskTitle,
      taskDescription: taskDesc,
      catName: catName,
      categoryClr: AppColors.softPurple,
      time: time,
      pmOram: time.hour < 12 || time.hour == 24 ? 'AM' : 'PM',
      dateTimeNow: DateTime.now(),
    );
    addTaskToList(model);
  }

  addTaskToList(TaskModel model) {
    // we will recieve a model of a task and put it in the database
    todayTasks.add(model);
    // now we will init list again
    initList();
  }

  deleteTask(TaskModel task) {
    // we will recieve a model to delete it from databse
    todayTasks.remove(task);
    // now we will init list again
  }

  addTaskToCompleted(TaskModel task) {
    todayTasks.remove(task);
    completedTasks.add(task);
    initList();
  }

  removeTaskFromCompleted(TaskModel task) {
    completedTasks.remove(task);
    todayTasks.add(task);
    initList();
  }
}
