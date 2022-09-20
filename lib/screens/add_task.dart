import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen({Key? key, required this.addTaskCallBack}) : super(key: key);

  final _controller = TextEditingController();

  String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              controller: _controller,
              autofocus: true,
              onChanged: (newTitle) {
                newTaskTitle = newTitle;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                addTaskCallBack(newTaskTitle);
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
    );
  }
}

// ()
// final Function() addTaskCallBack;
// final _controller = TextEditingController();
