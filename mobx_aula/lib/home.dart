import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_aula/controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: const InputDecoration(labelText: "Email"),
                onChanged: controller.setEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: const InputDecoration(labelText: "Senha"),
                obscureText: true,
                onChanged: controller.setSenha,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) {
                  return ElevatedButton(
                    onPressed: controller.formularioValidado ? () {} : null,
                    child: const Text(
                      "Logar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
