import 'dart:core';

import 'package:flutter/material.dart';

class OptionalElementState extends ChangeNotifier {
  int _elementResult;
  int get sonuc => _elementResult;

  void addToResult(int score) {
    _elementResult = _elementResult + score;
    notifyListeners();
  }

  void subtractFromResult(int score) {
    _elementResult = _elementResult - score;
    notifyListeners();
  }

  void clearResult() {
    _elementResult = 0;
  }
}

class OptionState extends ChangeNotifier {
  bool _optionsBoolValue = false;

  get optionsBoolValue {
    return _optionsBoolValue;
  }

  toggleOptionsBoolValue() {
    _optionsBoolValue = !_optionsBoolValue;
    notifyListeners();
    //deneme yazısıdır evet deneme
  }
}
