import 'package:flutter/material.dart';
import 'package:flutter_task/components/task.dart';

class Difficulty extends StatelessWidget {
  final int difficultyLevel;

  const Difficulty({
    required this.difficultyLevel,
    super.key,
    required this.widget,
  });

  final Task widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 1) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 2) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 3) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 4) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 5) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],
        ),
      ],
    );
  }
}
