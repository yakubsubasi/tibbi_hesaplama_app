import 'package:flutter/cupertino.dart';

class Calculater extends StatelessWidget {
  String speciality;
  String title;
  String subTitle;
  Widget body;
  Function onCalculate;

  Calculater(
      {this.subTitle,
      this.title,
      this.body,
      this.speciality,
      this.onCalculate});

  @override
  Widget build(BuildContext context) {
    return body;
  }
}
