import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              child: Row(
            children: [
              Container(
                width: 420,
                height: 32,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(248, 247, 247, 1),
                    border: Border.all(
                        color: Color.fromRGBO(218, 218, 218, 1),
                        width: 1.33,
                        style: BorderStyle.solid)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, bottom: 8, top: 6),
                  child: TextField(
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        //contentPadding: EdgeInsets.only(left: 12, top: 8, bottom: ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 12,
                            color: Color.fromRGBO(115, 128, 140, 1))),
                  ),
                ),
              ),
              Container(
                width: 32,
                height: 32,
                child: FlatButton(
                  onPressed: () {},
                  color: Color.fromRGBO(49, 127, 225, 1),
                  child: Image.asset("images/Icon-Search.png"),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

class Showing extends StatefulWidget {
  @override
  _ShowingState createState() => _ShowingState();
}

class _ShowingState extends State<Showing> {
  int _startDataShow = 5;
  int _dataShow = 5;
  int _stepDataShow = 10;
  int _sumOfData = 100;

  void increaseNumberData() {
    setState(() {
      if (_dataShow >= 5 && _dataShow < _sumOfData) {
        _dataShow += _stepDataShow;
        if (_dataShow > _sumOfData) {
          _dataShow = _sumOfData;
        }
      } 
    });
  }

  void decreaseNumberData() {
    setState(() {
      if (_dataShow > 5) {
        _dataShow -= _stepDataShow;
        if (_dataShow < _startDataShow) {
          _dataShow = _startDataShow;
        }
      }
    });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Showing",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 10.64),
        ),
        SizedBox(
          width: 8.67,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(218, 218, 218, 1), width: 1.33)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _dataShow.toString(),
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 10.64),
                ),
                SizedBox(
                  width: 5.56,
                ),
                Column(
                  children: [
                    Container(
                      child: FlatButton(
                          height: 3.27,
                          minWidth: 4.84,
                          padding: EdgeInsets.all(0),
                          onPressed: increaseNumberData,
                          child: Image.asset(
                            "images/Icon-Up.png",
                          )),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    FlatButton(
                        height: 3.27,
                        minWidth: 4.84,
                        padding: EdgeInsets.all(0),
                        onPressed: decreaseNumberData,
                        child: Image.asset("images/Icon-Down.png")),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 15.12,
        ),
        Text(
          "entries",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 10.64),
        )
      ],
    ));
  }
}

class SearchBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [SearchBar(), Showing()],
      ),
    );
  }
}
