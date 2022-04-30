import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple_two/pessoa.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeiros passos com Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                (context).select((Pessoa p) => p.nome) +
                    ' Tem ${(context).select((Pessoa p) => p.idade)} de idade',
                style: const TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/contador');
              },
              child: const Text('Incrementador'),
            ),
          ],
        ),
      ),
    );
  }
}
