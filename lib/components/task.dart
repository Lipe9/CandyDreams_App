import 'package:flutter/material.dart';  // Importação do Flutter Material para widgets UI
import 'package:flutter_task/components/difficulty.dart';  // Importação de um componente personalizado

// ignore: must_be_immutable
class Task extends StatefulWidget {  // Classe Task que é um StatefulWidget
  final String name;  // Atributo nome da tarefa
  final String foto;  // Atributo URL ou caminho da foto da tarefa
  final int dificuldade;  // Atributo nível de dificuldade da tarefa
  final double price;  // Atributo preço da tarefa

  // Construtor da classe Task
  Task(this.name, this.foto, this.dificuldade, this.price, {Key? key}) : super(key: key);

  int nivel = 0;  // Atributo nível inicializado com zero

  @override
  State<Task> createState() => _TaskState();  // Criação do estado da tarefa
}

class _TaskState extends State<Task> {  // Estado privado da classe Task
  // Função para verificar se a foto é de um asset local ou de uma URL
  bool assetOrNetwork() {
    if (widget.foto.contains('http')) {  // Verifica se a URL contém 'http'
      return false;  // Retorna falso se for uma URL (rede)
    }
    return true;  // Retorna verdadeiro se for um asset local
  }

  @override
  Widget build(BuildContext context) {  // Método build para construir a UI da tarefa
    return Padding(  // Widget de Padding para adicionar espaço ao redor do conteúdo
      padding: const EdgeInsets.all(20.0),  // Padding de 20 em todos os lados
      child: Stack(  // Widget Stack para empilhar widgets
        children: [
          Container(  // Container para a parte visual da tarefa
            decoration: BoxDecoration(  // Decoração do container
              borderRadius: BorderRadius.circular(10),  // Borda circular
              color: Color.fromARGB(255, 245, 178, 255),  // Cor de fundo
            ),
            height: 165,  // Altura do container
          ),
          Column(  // Coluna para organizar o conteúdo verticalmente
            children: [
              Container(  // Container para o conteúdo principal da tarefa
                decoration: BoxDecoration(  // Decoração do container
                  borderRadius: BorderRadius.circular(22),  // Borda circular
                  color: Colors.white,  // Cor de fundo branca
                ),
                height: 160,  // Altura do container principal
                child: Row(  // Linha para organizar o conteúdo horizontalmente
                
                  children: [
                    Container(  // Container para exibir a foto da tarefa
                      decoration: BoxDecoration(  // Decoração do container da foto
                        borderRadius: BorderRadius.circular(20),  // Borda circular
                        color: Colors.black26,  // Cor de fundo
                      ),
                      width: 220,  // Largura do container da foto
                      height: 150,  // Altura do container da foto
                      margin: const EdgeInsets.all(20),  // Margem interna do container da foto
                      child: ClipRRect(  // Widget ClipRRect para bordas arredondadas
                        borderRadius: BorderRadius.circular(20),  // Borda circular
                        child: assetOrNetwork()  // Verifica se é asset ou rede
                            ? Image.asset(  // Exibe imagem do asset local
                                widget.foto,
                                fit: BoxFit.cover,  // Ajuste da imagem
                              )
                            : Image.network(  // Exibe imagem da URL
                                widget.foto,
                                fit: BoxFit.cover,  // Ajuste da imagem
                              ),
                      ),
                    ),
                    Column(  // Coluna para organizar o texto ao lado da foto
                      mainAxisAlignment: MainAxisAlignment.center,  // Alinhamento principal centralizado
                      crossAxisAlignment: CrossAxisAlignment.start,  // Alinhamento cruzado à esquerda
                      children: [
                        SizedBox(  // Widget SizedBox para tamanho fixo do texto
                          width: 300,  // Largura fixa do texto
                          child: Text(  // Widget Text para exibir o nome da tarefa
                            widget.name,  // Nome da tarefa
                            style: const TextStyle(  // Estilo do texto
                              fontWeight: FontWeight.bold,  // Negrito
                              fontSize: 24,  // Tamanho da fonte
                              overflow: TextOverflow.ellipsis,  // Overflow com reticências
                            ),
                          ),
                        ),
                        Text(  // Widget Text para exibir o preço da tarefa
                          'R\$${widget.price.toStringAsFixed(2)}',  // Preço formatado com duas casas decimais
                          style: TextStyle(  // Estilo do texto
                            fontSize: 18,  // Tamanho da fonte
                            fontWeight: FontWeight.bold,  // Negrito
                            color: Colors.green,  // Cor verde para o preço
                          ),
                        ),
                        Difficulty(  // Widget personalizado para exibir a dificuldade
                          widget: widget,  // Passa a instância atual da tarefa
                          difficultyLevel: widget.dificuldade,  // Passa o nível de dificuldade
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
