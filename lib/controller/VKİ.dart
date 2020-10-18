// Vki Page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/calculater_model.dart';

Calculater vki = Calculater(
  title: 'Vicut Kitle İndeksi',
  subTitle: 'Vücut kitle indeksi ile insanların kilolarını takip edebilirsiniz',
  body: ListView(
    children: [
      Card(
        child: ListTile(
          title: Text('yaş'),
        ),
      )
    ],
  ),
);
