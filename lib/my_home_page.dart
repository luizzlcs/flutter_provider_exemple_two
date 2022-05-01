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
            ElevatedButton.icon(
              icon: Icon(Icons.pages),
              onPressed: () {
                Navigator.of(context).pushNamed('/contador');
              },
              label: const Text('Página 2'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text(
                (context).select((Pessoa p) => p.nome) +
                    ' Tem ${(context).select((Pessoa p) => p.idade)} de idade',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Provider.of<Pessoa>(context, listen: false).incrementaIdade();
        },
        label: const Text(
          '+',
          style: TextStyle(fontSize: 42),
        ),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
