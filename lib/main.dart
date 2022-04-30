import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_exemple_two/contador.dart';
import 'package:flutter_provider_exemple_two/pessoa.dart';

import 'my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<Pessoa>(
          create: (_) => Pessoa(nome: 'Thiago Pereiro', idade: 38),
        ),
        Provider<Contador>(
          create: (_) => Contador(numerador: 20 + 22),
        )
      ],
      child: MyApp(),
    ),
  );
}
