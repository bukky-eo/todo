import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;

  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.title,
      required this.checkboxCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkboxCallback(),
        ));
  }
}

// checkboxCallback: (bool checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });
//
// final String title;
// final bool isChecked;
// final Function checkboxCallback;

//
