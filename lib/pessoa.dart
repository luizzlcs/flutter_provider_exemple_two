import 'package:flutter/cupertino.dart';

class Pessoa with ChangeNotifier {
  
  String nome = 'Maria Lucia';
  int idade = 56;

  Pessoa({
    required this.nome,
    required this.idade,
  });

  void incrementaIdade() {
    this.idade++;
    notifyListeners();
  }
}
