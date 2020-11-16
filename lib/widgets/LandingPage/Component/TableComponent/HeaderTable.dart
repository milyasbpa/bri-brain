import 'package:flutter/material.dart';

class HeaderTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Detail Nasabah Churn",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 24
              ),
              ),
            Row(
              children: [
                Text(
                  "Kategori:",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16
                  ),
                ),

                SizedBox(
                  width: 17.34,
                ),

                Container(
                  width: 17.34 ,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(247,86,86,1)
                  ),
                ),
                SizedBox(
                  width: 8.67,
                ),
                Text(
                  "Buruk",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16
                  )
                  )
              ]
            )
          ],
        ),
      ),
    );
  }
}