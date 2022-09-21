import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:to_do/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milo'),
    Task(name: 'Do Pap'),
    Task(name: 'Buy milo'),
  ];
  int get tasksCount {
    return tasks.length;
  }

  UnmodifiableListView<Task> get _tasks {
    return UnmodifiableListView(tasks);
  }

  void addTask(Task task) {
    tasks.add(task);
    print('Added New Task[${task.name}]');
    notifyListeners();
  }

  void updateTaskState(int index, bool isCompleted) {
    tasks[index].isDone = isCompleted;
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
