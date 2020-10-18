import 'package:flutter/material.dart';
import 'package:tibbi_hesaplama/View/home.dart';

void main() {
  runApp(HesaplayiciApp());
}

class HesaplayiciApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
