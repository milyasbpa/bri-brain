import 'package:flutter/material.dart';

class ColumnName extends StatelessWidget {
  final String columnName;
  ColumnName(this.columnName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        columnName,
        style: TextStyle(
            color: Color.fromRGBO(26, 50, 74, 1),
            fontFamily: "Poppins",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 10),
      ),
    );
  }
}

class TableColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Color.fromRGBO(0, 0, 0, 1), width: 0),
          bottom : BorderSide(color: Color.fromRGBO(0, 0, 0, 1), width: 0)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13.01, 12.06, 0, 13.94),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnName("Rekening"),
            ColumnName("Nama Nasabah"),
            ColumnName("Ratas Saldo 1 bln terakhir"),
            ColumnName("Nominal trx 3 bln terakhir"),
            ColumnName("Churn Score"),
            ColumnName("Peluang Churn"),
            SizedBox(
              width: 42.17 ,
            )
          ],
        ),
      ),
    );
  }
}
