import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple_two/contador_page.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Primeiro App com Provider",
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: const MyHomePage(),
      routes: {
        '/contador': (context) => ContadorPage(),
      },
    );
  }
}
