import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tibbi_hesaplama/state/calculater_state.dart';
import 'package:tibbi_hesaplama/state/optional_element_state.dart';

// This widget is used in calculaters such as GKS.
class OptionalElement extends StatelessWidget {
  int score;
  final String title;
  final List<Option> children;
  final Icon icon;

  OptionalElement({this.title, this.children, this.icon, this.score});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OptionalElementState>(
            create: (context) => OptionalElementState()),
      ],
      child: Card(
        child: Container(
          child: Column(
            children: [
              ListTile(
                trailing: icon,
                tileColor: Colors.amber,
                title: Consumer<OptionalElementState>(
                    builder: (contex, state, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        state.sonuc == null
                            ? ''
                            : state.sonuc.toString() + ' Puan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                }),
              ),
              Column(
                children: children,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  final String title;
  final int score;
  Function scoreCallBack;

  Option({this.title, this.score, this.scoreCallBack});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OptionState>(
      create: (context) => OptionState(),
      child: Container(
        child: ListTile(
          dense: true,
          title: Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          trailing: OptionChekBox(score: score),
          subtitle: Text(
            'Score: $score',
            textAlign: TextAlign.end,
          ),
        ),
      ),
    );
  }
}

class OptionChekBox extends StatelessWidget {
  const OptionChekBox({
    Key key,
    @required this.score,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: Provider.of<OptionState>(context).optionsBoolValue,
      onChanged: (value) {
        Provider.of<OptionalElementState>(context, listen: false).clearResult();
        Provider.of<OptionalElementState>(context, listen: false)
            .addToResult(score);
        Provider.of<OptionState>(context, listen: false)
            .toggleOptionsBoolValue();
        print(
            Provider.of<OptionState>(context, listen: false).optionsBoolValue);
      },
    );
  }
}
