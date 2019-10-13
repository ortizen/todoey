import 'package:flutter/foundation.dart';

class Task with ChangeNotifier {
  final String name;
  bool isDone;
  List<Task> _tasks = [];

  Task({this.name, this.isDone = false});

  void toggleDone(int index) {
    notifyListeners();
    _tasks[index].isDone = !_tasks[index].isDone;
  }

  void clearFinishedTasks() {
    for (Task task in _tasks) {
      if (!task.isDone) {
        _tasks.remove(task);
      }
    }
    notifyListeners();
  }

  int getLength() {
    notifyListeners();
    return _tasks.length;
  }

  String getTaskText(int index) {
    notifyListeners();
    return _tasks[index].name;
  }

  bool done(int index) {
    notifyListeners();
    return _tasks[index].isDone;
  }

  void addTask(String text) {
    _tasks.add(Task(name: text));
    notifyListeners();
  }
}
