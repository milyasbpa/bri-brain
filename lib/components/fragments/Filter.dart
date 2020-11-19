// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/components/elements/DropDownMenu.dart';

class Item {
  final String name;
  final Icon icon;

  const Item(this.name, this.icon);
}

class Filter extends StatelessWidget {
  const Filter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // ignore: non_constant_identifier_names
    List<Item> nasabahList = [
      Item('BRILink', null),
      Item('Lainnya', Icon(Icons.android)),
    ];

    List<Item> kanWilList = [
      Item('Kanwil Jakarta 1', null),
      Item('Kanwil Jakarta 2', null),
      Item('Kanwil Jakarta 3', null),
    ];

    List<Item> kanPusList = [
      Item('Kanpus Jakarta 1', null),
      Item('Kanpus Jakarta 2', null),
      Item('Kanpus Jakarta 3', null),
    ];
    List<Item> unitList = [
      Item('Kanwil Jakarta 1', null),
      Item('Kanwil Jakarta 2', null),
      Item('Kanwil Jakarta 3', null),
    ];
    List<Item> pnList = [
      Item('Kanwil Jakarta 1', null),
      Item('Kanwil Jakarta 2', null),
      Item('Kanwil Jakarta 3', null),
    ];

    // print(nasabahList.sublist(0, 1));

    return Container(
      width: SizeConfig.blockHorizontal*60,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: EdgeInsets.fromLTRB(0, 0, 0, SizeConfig.blockVertical*5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.12),
                blurRadius: 8,
                offset: new Offset(0, 2))
          ]),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: DropDownMenu(
                  listItem: nasabahList,
                  title: "Produk",
                  hint: "Semua",
                ),
              ),
              Flexible(
                child: DropDownMenu(
                  listItem: kanWilList,
                  title: "Kantor Wilayah",
                  hint: 'Semua',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: DropDownMenu(
                  listItem: kanWilList,
                  title: 'Kantor Wilayah',
                  hint: 'Semua',
                ),
              ),
              Flexible(
                child: DropDownMenu(
                  listItem: kanPusList,
                  title: 'Kantor Pusat',
                  hint: 'Semua',
                ),
              ),
              Flexible(
                child: DropDownMenu(
                  listItem: unitList,
                  title: 'Unit',
                  hint: 'Semua',
                ),
              ),
              Flexible(
                child: DropDownMenu(
                  listItem: pnList,
                  title: 'PN',
                  hint: 'Semua',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 3, top: 16, bottom: 24),
                child: FlatButton(
                  color: Color.fromRGBO(243, 111, 33, 1),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 53),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "CARI",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
