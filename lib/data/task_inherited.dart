// Importação de pacotes necessários
import 'package:flutter/material.dart';
import 'package:flutter_task/components/difficulty.dart';
import 'package:flutter_task/components/task.dart';

// Classe TaskInherited que herda de InheritedWidget
class TaskInherited extends InheritedWidget {
  // Construtor da classe TaskInherited
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  // Lista de tarefas
  final List<Task> taskList = [
    Task('Bolo de Chocolate', 'assets/IMG-20240603-WA0001.jpg', 5, 3),
    Task('Bolo de Pote', 'assets/pd1.jpg', 5, 4),
    Task('Mousse', 'assets/IMG-20240603-WA0005.jpg', 5, 2.5),
    Task('Brownie', 'assets/b1.jpg', 5, 4),
    Task('Pudim', 'assets/IMG-20240603-WA0007.jpg', 5, 3),
    Task('Brigadeiro', 'assets/bri1.jpg', 5, 1),
  ];

  // Getter para a lista de tarefas (não utilizado)
  get tasks => null;

  // Método para adicionar uma nova tarefa à lista
  void newTask(String name, String photo, int difficulty, double price) {
    taskList.add(Task(name, photo, difficulty, price));
  }

  // Método estático para recuperar a instância de TaskInherited do contexto
  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No found in context');
    return result!;
  }

  // Método para notificar se a lista de tarefas foi alterada
  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}

// Classe TaskList que herda de StatelessWidget
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Recupera a instância de TaskInherited do contexto
    final taskInherited = TaskInherited.of(context);
    // Recupera a lista de tarefas
    final List<Task> tasks = taskInherited.taskList;

    // Retorna uma lista de tarefas usando ListView.builder
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return TaskItem(task: task);
      },
    );
  }
}

// Classe TaskItem que herda de StatelessWidget
class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({required this.task});

  @override
  Widget build(BuildContext context) {
    // Retorna um card com informações da tarefa
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container com imagem da tarefa
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(task.foto),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Texto com nome da tarefa
                  Text(
                    task.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Texto com preço da tarefa
                  Text(
                    '\$${task.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Widget de dificuldade da tarefa
                  Difficulty(
                    widget: task,
                    difficultyLevel: task.dificuldade,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}