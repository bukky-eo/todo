// import 'dart:developer';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:to_do/widgets/list_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (BuildContext context, data, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            label: data.tasks[index].name,
            isChecked: data.tasks[index].isDone,
            onTaskChecked: (isChecked) {
              data.updateTaskState(index, isChecked);
            },
            onTaskRemoved: () {
              data.removeTask(index);
            },
          );
        },
        itemCount: data.tasksCount,
      );
    });
  }
}
