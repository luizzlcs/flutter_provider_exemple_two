import 'package:flutter/cupertino.dart';

class Contador with ChangeNotifier {
  int numerador = 0;

  Contador({
    required this.numerador,
  });

  void incrementar() {
    this.numerador++;
    notifyListeners();
  }
}
