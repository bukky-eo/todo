import 'package:flutter/material.dart';
import 'package:to_do/widgets/list_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(),
      ],
    );
  }
}
