import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/calculaterList.dart';
import 'package:tibbi_hesaplama/state/calculater_state.dart';

class CalculaterPage extends StatelessWidget {
  final int calculaterNumber;
  final Function onCalculate;
  CalculaterPage({this.calculaterNumber, this.onCalculate});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculaterState(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(calculaterList[calculaterNumber].title),
        ),
        body: ListView(children: [calculaterList[calculaterNumber].body]),
        bottomNavigationBar: Container(
          color: Colors.lightBlueAccent.shade100,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text('Hesapla'),
                    onPressed: () {
                      calculaterList[calculaterNumber].onCalculate;
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: Container(
                              color: Colors.blue,
                              child: SizedBox(
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
