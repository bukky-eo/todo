import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  @override
  final TextEditingController _controller = TextEditingController();
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
            Text(
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
              // decoration: InputDecoration(
              //     enabledBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.zero,
              //   borderSide:  BorderSide(color: Colors.teal),
              // )
              // ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add Task'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ()
