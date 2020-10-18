import 'package:flutter/cupertino.dart';

class CalculaterState extends ChangeNotifier {
  int _result = 2;

  int get sonuc => _result;

  void addToResult(score) {
    _result = _result + score;
    notifyListeners();
  }

  void subtractFromResult(score) {
    _result = _result - score;
    notifyListeners();
  }

  void clearResult() {
    _result = 0;
  }
}
