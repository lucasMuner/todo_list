import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Comprar leite."),
    Task(name: "Limpar a casa."),
    Task(name: "Estudar Flutter.")
  ];

  void addTask(newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
