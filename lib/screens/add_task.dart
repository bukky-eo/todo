import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import '../models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({
    Key? key,
  }) : super(key: key);
  String title = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xff757575),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                // controller: _controller,
                autofocus: true,
                onChanged: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  var task = Task(name: title, isDone: false);
                  Provider.of<TaskData>(context, listen: false).addTask(task);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.teal.shade500,
                    padding: const EdgeInsets.symmetric(vertical: 15)),
                child: const Text(
                  'Add Task',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ()
// final Function() addTaskCallBack;
// final _controller = TextEditingController();
