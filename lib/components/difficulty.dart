import 'package:flutter/material.dart';  // Importação do Flutter Material para widgets UI
import 'package:flutter_task/components/task.dart';  // Importação da classe Task

class Difficulty extends StatelessWidget {  // Classe Difficulty que é um StatelessWidget
  final int difficultyLevel;  // Atributo nível de dificuldade

  // Construtor da classe Difficulty
  const Difficulty({
    required this.difficultyLevel,  // Parâmetro obrigatório: nível de dificuldade
    super.key,  // Chave opcional do construtor super
    required this.widget,  // Parâmetro obrigatório: instância de Task (widget)
  });

  final Task widget;  // Instância da classe Task

  @override
  Widget build(BuildContext context) {  // Método build para construir a UI do widget Difficulty
    return Row(  // Widget Row para exibir ícones em linha
      children: [
        Icon(  // Ícone para representar uma estrela
          Icons.star,  // Ícone de estrela
          size: 15,  // Tamanho do ícone
          color: (difficultyLevel >= 1) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],  // Cor do ícone baseada no nível de dificuldade
        ),
        Icon(  // Ícone para representar uma estrela
          Icons.star,  // Ícone de estrela
          size: 15,  // Tamanho do ícone
          color: (difficultyLevel >= 2) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],  // Cor do ícone baseada no nível de dificuldade
        ),
        Icon(  // Ícone para representar uma estrela
          Icons.star,  // Ícone de estrela
          size: 15,  // Tamanho do ícone
          color: (difficultyLevel >= 3) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],  // Cor do ícone baseada no nível de dificuldade
        ),
        Icon(  // Ícone para representar uma estrela
          Icons.star,  // Ícone de estrela
          size: 15,  // Tamanho do ícone
          color: (difficultyLevel >= 4) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],  // Cor do ícone baseada no nível de dificuldade
        ),
        Icon(  // Ícone para representar uma estrela
          Icons.star,  // Ícone de estrela
          size: 15,  // Tamanho do ícone
          color: (difficultyLevel >= 5) ? Color.fromARGB(255, 245, 178, 255) : Colors.pink[100],  // Cor do ícone baseada no nível de dificuldade
        ),
      ],
    );
  }
}
