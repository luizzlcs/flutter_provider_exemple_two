import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_exemple_two/pessoa.dart';

import 'my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider(
      create: (context) => Pessoa(nome: 'Lcucicleide Oliveira', idade: 38),
      child: MyApp(),
    ),
  );
}
