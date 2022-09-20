import 'package:flutter/material.dart';
import 'package:to_do/screens/add_task.dart';
import 'package:to_do/widgets/list_view.dart';

import '../models/tasks.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy milo'),
    Task(name: 'Do Pap'),
    Task(name: 'Buy milo'),
  ];
  void addToList() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) =>
                  AddTaskScreen(addTaskCallBack: (newTaskTitle) {
                    print(newTaskTitle);
                    setState(() {
                      tasks.add(Task(name: newTaskTitle));
                    });
                  }));
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, right: 30.0, left: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text('12 tasks',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: TaskList(
              tasks: tasks,
            ),
          ))
        ],
      ),
    );
  }
}
// k(top: 60.0)
// ()
// k
