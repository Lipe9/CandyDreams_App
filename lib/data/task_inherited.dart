import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Bolo', 'assets/IMG-20240603-WA0001.jpg', 5),
    Task('Bolo de pote', 'assets/IMG-20240603-WA0004.jpg', 2),
    Task('kkkkk', 'assets/IMG-20240603-WA0005.jpg', 5),
    Task('Andar de bike', 'assets/IMG-20240603-WA0006.jpg', 1),
    Task('Meditar', 'assets/IMG-20240603-WA0007.jpg', 5),
    Task('COCO', 'assets/IMG-20240603-WA0008.jpg', 4),
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
