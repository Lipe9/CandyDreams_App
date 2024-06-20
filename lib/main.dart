import 'package:flutter/material.dart';
import 'package:flutter_task/data/task_inherited.dart';
import 'package:flutter_task/screens/app_padrao.dart';
import 'package:flutter_task/screens/initial_screen.dart';
import 'package:flutter_task/screens/login_page.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CandyDreams',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 245, 178, 255)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => TaskInherited(child: const InitialScreens()),
        '/tela': (context) => const MyFirstWidge(),
        
      },
    );
  }
}
