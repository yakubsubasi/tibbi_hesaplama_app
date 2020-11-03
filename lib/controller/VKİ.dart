// Vki Page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tibbi_hesaplama/View/widgets/quantitative_widget.dart';

import '../model/calculater_model.dart';

Calculater vki = Calculater(
  title: 'Vicut Kitle İndeksi',
  subTitle: 'Vücut kitle indeksi ile insanların kilolarını takip edebilirsiniz',
  body: VkiBody(),
);

class VkiBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          QuantitativeElement(
            title: 'kilo',
            unit: 'kg',
          ),
          QuantitativeElement(
            title: 'Boy',
            unit: 'cm',
          )
        ],
      ),
    );
  }
}
