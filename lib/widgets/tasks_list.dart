import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_app/models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(index);
      },
      itemCount: Provider.of<Task>(context).getLength(),
    );
  }
}
