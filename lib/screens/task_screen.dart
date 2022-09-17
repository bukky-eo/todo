import 'package:flutter/material.dart';

class TasksScren extends StatelessWidget {
  const TasksScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        padding: const EdgeInsets.only(
            top: 30.0, right: 30.0, left: 30.0, bottom: 30.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.0,
              child: Icon(
                Icons.list,
                size: 30.0,
                color: Colors.teal,
              ),
            ),
            Text('Todoey')
          ],
        ),
      ),
    );
  }
}
// (top: 60.0)
// ()
