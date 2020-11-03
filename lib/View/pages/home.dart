import 'package:flutter/material.dart';
import 'package:tibbi_hesaplama/View/pages/CalculaterPage.dart';
import 'package:tibbi_hesaplama/model/calculaterList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tıbbi Hesaplama'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('TIBBİ HESAPLAMA UYGULAMASI'),
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: calculaterList.length,
          itemBuilder: (context, int index) {
            return Card(
              child: ListTile(
                title: Text(calculaterList[index].title),
                subtitle: Text(calculaterList[index].subTitle),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return CalculaterPage(
                          calculaterNumber: index,
                        );
                      },
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
