import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropDownMenu extends StatefulWidget {
  List listItem;
  String title, hint;
  // double width;
  DropDownMenu({
    Key key,
    @required this.listItem,
    @required this.title,
    @required this.hint,
    // @required this.width
  }) : super(key: key);

  // get nasabahlist => null;

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class Item {
  final String name;
  final Icon icon;
  const Item(this.name, this.icon);
}

class _DropDownMenuState extends State<DropDownMenu> {
  String _valItem;
  // List _listItem = [
  //   const Item('BRILink', null),
  //   const Item('Lainnya', Icon(Icons.android)),
  // ];

  BoxDecoration filterBoxDecoration() {
    // print(widget.listItem);
    return BoxDecoration(
      border: Border.all(width: 1, color: Color.fromRGBO(224, 224, 224, 1)),
      borderRadius: BorderRadius.all(Radius.circular(4)),
      color: Color.fromRGBO(246, 247, 249, 0.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.listItem);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      // width: widget.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              widget.title,
              style: TextStyle(
                fontFamily: "Poppins",
                color: Color.fromRGBO(130, 130, 130, 1),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 42,
            decoration: filterBoxDecoration(),
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down,
                        color: Color.fromRGBO(132, 159, 189, 1)),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                    hint: Text(widget.hint),
                    value: _valItem,
                    items: widget.listItem.map((item) {
                      return DropdownMenuItem(
                          child: Row(
                            children: [
                              item.icon == null
                                  ? SizedBox(
                                      width: 0,
                                    )
                                  : new Row(
                                      children: [
                                        item.icon,
                                        SizedBox(
                                          width: 10,
                                        )
                                      ],
                                    ),
                              Text(item.name),
                            ],
                          ),
                          value: item.name);
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _valItem = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
