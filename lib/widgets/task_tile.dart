import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final int index;

  TaskTile(this.index);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Provider.of<Task>(context).getTaskText(index),
        style: TextStyle(
            decoration: Provider.of<Task>(context).done(index)
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: Provider.of<Task>(context).done(index),
        onChanged: (checkboxState) {
          Provider.of<Task>(context).toggleDone(index);
        },
      ),
    );
  }
}
