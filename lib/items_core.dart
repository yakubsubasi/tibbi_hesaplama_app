import 'package:flutter/material.dart';

class SingleItem {
  String name;
  bool value;
}

class Oncul {
  String name;
  int score;

  Oncul({this.name, this.score});
}

class OnculluItem {
  String title;
  List<Oncul> onculListesi = [];

  OnculluItem({this.title});

   onculYap(String name, int score) {
    Oncul yeniOncul = Oncul(name: name, score: score);
    onculListesi.add(yeniOncul);
  }

  getOnculluItem() {
    return Container(
      child: Row(
        children: [
          Text(title),
          ListView.builder(itemBuilder: (context, int index) {
            return Text(onculListesi[index].name);
          })
        ],
      ),
    );
  }
}
