import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'package:provider/provider.dart';

String message;

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
            padding: const EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  autofocus: true,
                  onChanged: (value) {
                    message = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 20.0,
                          color: Colors.lightBlueAccent,
                        ),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  onPressed: () {
                    Provider.of<Task>(context).addTask(message);
                    Navigator.pop(context);
                  },
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Add',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
