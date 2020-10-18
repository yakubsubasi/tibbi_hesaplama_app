import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/calculater_model.dart';
import 'package:tibbi_hesaplama/state/calculater_state.dart';

import 'package:tibbi_hesaplama/View/oncullu_widget_view.dart';

Calculater glasgowComaScale = Calculater(
    body: Container(
      child: Column(
        children: [
          //eye respons
          OptionalElement(
            icon: Icon(
              Icons.visibility,
              color: Colors.black,
            ),
            title: 'Göz Yanıtı',
            children: [
              Option(
                title: 'Spontan açık ve normal olarak hareketli',
                score: 4,
              ),
              Option(
                title: 'Sözle açabiliyor',
                score: 3,
              ),
              Option(
                title:
                    'Ağrılı uyaran ile açabiliyor (ağrılı uyaran kesinlikle yüz bölgesine uygulanmamalı)',
                score: 2,
              ),
              Option(
                title: 'Yanıtsız, açmıyor',
                score: 1,
              )
            ],
          ),
          //verbal respons
          OptionalElement(
            icon: Icon(
              Icons.record_voice_over,
              color: Colors.black,
            ),
            title: 'Sözel (Verbal) Yanıt',
            children: [
              Option(
                title:
                    'Hasta oryante, yaşını ve ismini biliyor ve doğru söyleyebiliyor',
                score: 5,
              ),
              Option(
                title: 'Sorulara konfüze bir biçimde yanıt verebiliyor',
                score: 4,
              ),
              Option(
                  title:
                      'Uygun olmayan kelimeler kullanıyor fakat kelimeler tek tek seçilebiliyor',
                  score: 3),
              Option(
                  title: 'Tanımlanamayan kelime ve sesler çıkartıyor',
                  score: 2),
              Option(
                title: 'Ses yok',
                score: 1,
              )
            ],
          ),
          //Motor respons
          OptionalElement(
              icon: Icon(
                Icons.fitness_center,
                color: Colors.black,
              ),
              title: 'Motor Yanıt',
              children: [
                Option(
                    title: 'Komutlara uyarak ekstremitelerini hareket ettirir',
                    score: 6),
                Option(
                  title:
                      'Ağrılı uyaran veren ekstremiteyi hareket ettirerek ağrıyı lokalize eder',
                  score: 5,
                ),
                Option(title: 'Ağrılı uyarandan çekerek yanıt verir', score: 4),
                Option(title: 'Dekortike postür, anormal fleksiyon', score: 3),
                Option(title: 'Deserebre postür, ekstansor yanıt', score: 2),
                Option(title: 'Hareket yok', score: 1)
              ]),
        ],
      ),
    ),
    title: 'Glasgow Koma Skalası',
    subTitle:
        'Koma durumundaki bir kimsenin bilincini ölçmek için bir skorlama sistemi');
