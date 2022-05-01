import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_exemple_two/contador.dart';

import 'package:flutter_provider_exemple_two/pessoa.dart';

import 'my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Pessoa>(
          create: (_) => Pessoa(nome: 'Lucicleide', idade: 37),
        ),
        ChangeNotifierProvider<Contador>(
          create: (_) => Contador(numerador: 0),
        )
      ],
      child: MyApp(),
    ),
  );
}
