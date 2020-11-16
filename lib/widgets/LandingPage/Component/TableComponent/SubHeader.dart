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
                  border: Border.all(
                    color: Color.fromRGBO(218,218,218,1),
                    width: 1.33,
                    style: BorderStyle.solid
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:4.0,bottom: 2),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  ),
                ),
              ),
              Container(
                width: 32,
                height: 32,
                child: FlatButton(
                  onPressed: (){},
                  color: Color.fromRGBO(49,127,225,1),
                  child: Image.asset("images/Icon-Search.png"),
                ),
              )
            ],
          )
          ),
        ],
      ),
    );
  }
}

class Showing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Showing",
                 style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 10.64
                ),
                ),
              SizedBox(
                width: 8.67,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(218,218,218,1),width: 1.33)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '5',
                         style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10.64
                           ),
                      ),
                      SizedBox(
                        width: 5.56,
                      ),
                      Column(
                        children: [
                          Image.asset("images/Icon-Up.png"),
                          Image.asset("images/Icon-Down.png"),
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
                  fontSize: 10.64
                ),
              )
            ],
          )
    );
  }
}

class SubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchBar(),
          Showing()
        ],
      ),
    );
  }
}