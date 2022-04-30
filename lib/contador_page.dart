import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple_two/contador.dart';
import 'package:provider/provider.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var i;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incrementador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(i.toString()),
          Text((context).select((Contador c) => c.numerador).toString()),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: const Icon(Icons.add),
              label: const Text(''),
            ),
          ),
        ],
      ),
    );
  }
}
