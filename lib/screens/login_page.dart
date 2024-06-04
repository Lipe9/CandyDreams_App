import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 245, 178, 255),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.network(
                          'https://i.postimg.cc/gcN9vpDc/C-pia-de-Logo-de-Est-dio-de-beleza-Rosa-20240603-191408-0000-removebg-preview.png'),
                    ),
                    Container(height: 20),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            TextField(
                              onChanged: (value) {
                                email = value;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              onChanged: (value) {
                                password = value;
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder()),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (email == 'candy.dreams@gmail.com' &&
                                    password == 'lipe9') {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  print('invalido');
                                }
                              },
                              child: const SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Entrar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
