import 'package:flutter/material.dart';

class OptionalElementState extends ChangeNotifier {
  int _elementResult;

  int get sonuc => _elementResult;

  void addToResult(score) {
    _elementResult = _elementResult + score;
    notifyListeners();
  }

  void subtractFromResult(score) {
    _elementResult = _elementResult - score;
    notifyListeners();
  }

  void clearResult() {
    _elementResult = 0;
  }
}
