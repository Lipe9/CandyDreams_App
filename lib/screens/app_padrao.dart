import 'package:flutter/material.dart';

class MyFirstWidge extends StatefulWidget {
  const MyFirstWidge({super.key});

  @override
  State<MyFirstWidge> createState() => _MyFirstWidgeState();
}

class _MyFirstWidgeState extends State<MyFirstWidge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 178, 255), // COR DO BACKGROUND DO MENU
        title: Text(
          'Nossa Equipe', // TÍTULO DO BACKGROUND DO MENU
          style: TextStyle(color: Colors.white), // COR DO TÍTULO DO BACKGROUND DO MENU
        ),
        centerTitle: true, // CENTRALIZAÇÃO DO TEXTO DO MENU
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255), // COR DO BACKGROUND DA PÁGINA
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // ESPAÇAMENTO ENTRE OS CARDS
          crossAxisAlignment: CrossAxisAlignment.center, // CENTRALIZAÇÃO DOS ELEMENTOS
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(179, 255, 223, 248), // BACKGROUND COLOR DO CARD
                  width: 150, // LARGURA DO CARD
                  height: 150, // ALTURA DO CARD
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // CENTRALIZAR IMAGEM AO CENTRO
                    children: [
                      Image.asset(
                        'assets/lipe.jpeg', // LINK DA FOTO
                        height: 100, // ALTURA DO CARD
                        width: 100, // LARGURA DO CARD
                      ),
                      SizedBox(height: 8.0),
                      Text("Kaio Alves"), // NOME DO MEMBRO
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(179, 255, 223, 248), // BACKGROUND COLOR DO CARD
                  width: 150, // LARGURA DO CARD
                  height: 150, // ALTURA DO CARD
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // CENTRALIZAR IMAGEM AO CENTRO
                    children: [
                      Image.asset(
                        'assets/lipe.jpeg', // LINK DA FOTO
                        height: 100, // ALTURA DO IMAGEM
                        width: 100, // LARGURA DO IMAGEM
                      ),
                      SizedBox(height: 8.0),
                      Text("Vinícius Santos"), // NOME DO MEMBRO
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(179, 255, 223, 248), // BACKGROUND COLOR DO CARD
                  width: 150, // LARGURA DO CARD
                  height: 150, // ALTURA DO CARD
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // CENTRALIZAR IMAGEM AO CENTRO
                    children: [
                      Image.asset(
                        'assets/lipe.jpeg', // LINK DA FOTO
                        height: 100, // ALTURA DO CARD
                        width: 100, // LARGURA DO CARD
                      ),
                      SizedBox(height: 8.0),
                      Text("Felipe Silva"), // NOME DO MEMBRO
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(179, 255, 223, 248), // BACKGROUND COLOR DO CARD
                  width: 150, // LARGURA DO CARD
                  height: 150, // ALTURA DO CARD
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // CENTRALIZAR IMAGEM AO CENTRO
                    children: [
                      Image.asset(
                        'assets/lipe.jpeg', // LINK DA FOTO
                        height: 100, // ALTURA DO CARD
                        width: 100, // LARGURA DO CARD
                      ),
                      SizedBox(height: 8.0),
                      Text("José Venício"), // NOME DO MEMBRO
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(179, 255, 223, 248), // BACKGROUND COLOR DO CARD
                  width: 150, // LARGURA DO CARD
                  height: 150, // ALTURA DO CARD
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // CENTRALIZAR IMAGEM AO CENTRO
                    children: [
                      Image.asset(
                        'assets/lipe.jpeg', // LINK DA FOTO
                        height: 100, // ALTURA DO CARD
                        width: 100, // LARGURA DO CARD
                      ),
                      SizedBox(height: 8.0),
                      Text("Days Morais"), // NOME DO MEMBRO
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(179, 255, 223, 248), // BACKGROUND COLOR DO CARD
                  width: 150, // LARGURA DO CARD
                  height: 150, // ALTURA DO CARD
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // CENTRALIZAR IMAGEM AO CENTRO
                    children: [
                      Image.asset(
                        'assets/lipe.jpeg', // LINK DA FOTO
                        height: 100, // ALTURA DO CARD
                        width: 100, // LARGURA DO CARD
                      ),
                      SizedBox(height: 8.0),
                      Text("Giselly Nascimento"), // NOME DO MEMBRO
                    ],
                  ),
                ),
              ],
            ),
            FloatingActionButton( // BOTÃO PARA RETORNAR PARA HOME
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushReplacementNamed('/home');
                });
              },
              child: Icon(Icons.keyboard_return_outlined),
            )
          ],
        ),
      ),
    );
  }
}
