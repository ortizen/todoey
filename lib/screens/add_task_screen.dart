import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabled: true,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.lightBlueAccent,
                  child: Text('Add'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
