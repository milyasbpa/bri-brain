import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Showing 1 to 5 of 16 entries",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12,
              color: Color.fromRGBO(115,128,140,1)
            ),
            ),
          Row(
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Color.fromRGBO(196,198,201,1),
                  size: 11 ,
                  )
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Text(
                      "1",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 10,
                        color: Color.fromRGBO(83,101,119,1)
                      ),
                      ),
                  )
                ],
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color.fromRGBO(83,101,119,1),
                  size: 11
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}