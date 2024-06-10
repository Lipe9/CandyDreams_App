import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Bolo de Chocolate', 'assets/IMG-20240603-WA0001.jpg', 5, 20),
    Task('Bolo de Pote', 'assets/IMG-20240603-WA0004.jpg', 2, 10),
    Task('Mousse', 'assets/IMG-20240603-WA0005.jpg', 5, 11),
    Task('Brownie', 'assets/IMG-20240603-WA0006.jpg', 1, 11),
    Task('Pudim', 'assets/IMG-20240603-WA0007.jpg', 5, 1),
    Task('Brigadeiro', 'assets/IMG-20240603-WA0008.jpg', 4, 11),
  ];

  get tasks => null;

  void newTask(String name, String photo, int difficulty, double price) {
    taskList.add(Task(name, photo, difficulty, price));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
