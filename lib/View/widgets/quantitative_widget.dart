import 'package:flutter/material.dart';

class QuantitativeElement extends StatelessWidget {
  final String title;
  final String unit;
  final double value;

  QuantitativeElement({this.title = '', this.unit = '', this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          children: [
            Spacer(
              flex: 1,
            ),
            Text(title),
            Spacer(
              flex: 30,
            ),
            Container(
              width: 100,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    fillColor: Colors.white),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              child: Center(child: Text(unit)),
              width: 35,
            )
          ],
        ),
      ),
    );

    /* Card(
      child: ListTile(
        leading: Text(title),
        title: Row(
          children: [TextField(), Text(unit)],
        ),
      ),
    );*/
  }
}
