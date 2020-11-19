import 'package:flutter/material.dart';
import 'package:bribrain_project/styles/colorConst.dart';
import 'package:bribrain_project/layout/layout.dart';

class Item {
  final String title;
  final String description;
  const Item(this.title, this.description);
}

class DummyCard extends StatelessWidget {
  final List _listItem = [
    const Item('Lending Score',
        'Kelayakan calon debitur yang akan diberikan produk-produk pinjaman'),
    const Item('Fraud Store',
        'Potensi fraud dari setiap nasabah sebagai mitigasi awal penanganan fraud'),
    const Item('Customer Score',
        'Loyalitas dan profitabilitas nasabah sebagai landasan customer mendapat treatment presisi'),
    const Item('Merchant Score',
        'Loyalitas dan rekomendasi merchant baru (retail & chain, ecommerce, mikro, dan BRILINK)'),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin:EdgeInsets.symmetric(vertical:SizeConfig.blockVertical*6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _listItem.map((item) {
          return Container(
            width: 240,
            child: Column(children: [
              Container(
                color: Color(DummyColor),
                width: 240,
                height: 240,
              ),
              Text(
                item.title,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Wrap(children: [
                Text(
                  item.description,
                  style: TextStyle(fontSize: 16, color: Color(0xFF8F9AB0)),
                  textAlign: TextAlign.center,
                ),
              ])
            ]),
          );
        }).toList(),
      ),
    );
  }
}
