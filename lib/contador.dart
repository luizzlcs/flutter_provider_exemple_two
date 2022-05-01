import 'package:flutter/cupertino.dart';

class Contador with ChangeNotifier {
  
  int numerador;

  Contador({
    required this.numerador,
  });

  void incrementar() {
    this.numerador++;
    notifyListeners();
  }
}
