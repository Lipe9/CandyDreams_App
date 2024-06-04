import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/IMG-20240603-WA0001.jpg', 5),
    Task('Fazer compras', 'assets/compras.jpg', 2),
    Task('Comprar ferrari', 'assets/ferrari.jpg', 5),
    Task('Andar de bike', 'assets/bike.jpg', 1),
    Task('Meditar', 'assets/meditar.jpg', 5),
    Task('Viajar', 'assets/viajar.jpg', 4),
    Task('Jogar Videogame', 'assets/videogame.jpg', 4),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
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
