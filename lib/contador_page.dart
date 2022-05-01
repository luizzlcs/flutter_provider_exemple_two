import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple_two/contador.dart';
import 'package:provider/provider.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incrementador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text((context).select((Contador c) => c.numerador).toString()),
          Center(
            child: FloatingActionButton.extended(
              backgroundColor: Colors.green,
              label: Text('Contador'),
              icon: Icon(Icons.navigation),
              onPressed: () {
                Provider.of<Contador>(context, listen: false).incrementar();
              },
            ),
          ),
        ],
      ),
    );
  }
}
