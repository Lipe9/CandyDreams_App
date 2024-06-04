import 'package:flutter/material.dart';
import 'package:flutter_task/data/task_inherited.dart';
import 'package:flutter_task/screens/form_screen.dart';

class InitialScreens extends StatefulWidget {
  const InitialScreens({super.key});

  @override
  State<InitialScreens> createState() => _InitialScreensState();
}

class _InitialScreensState extends State<InitialScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.network(
                    'https://i.postimg.cc/Qt7Cmhmy/logo.png'),
              ),
              accountName: const Text('Candy Dreams'),
              accountEmail: const Text('Candy.dreams@gmail.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Tela'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/tela');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 178, 255),
        title: const Text(
          'Lista de Produtos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
        padding: EdgeInsets.only(top: 8, bottom: 75),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
