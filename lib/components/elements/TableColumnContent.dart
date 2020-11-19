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
      alignment: Alignment.center,
    );
  }
}

class TableColumnContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(246, 251, 255, 1),
          border: Border(
              top:
                  BorderSide(color: Color.fromRGBO(180, 212, 252, 1), width: 1),
              bottom: BorderSide(
                  color: Color.fromRGBO(180, 212, 252, 1), width: 1))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13.01, 12.06, 0, 13.94),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnName("Rekening"),
            SizedBox(
              width: 10,
            ),
            ColumnName("Nama Nasabah"),
            ColumnName("Ratas Saldo 1 bln terakhir"),
            ColumnName("Nominal trx 3 bln terakhir"),
            ColumnName("Churn Score"),
            ColumnName("Peluang Churn"),
            ColumnName("Tindak Lanjut"),
            SizedBox(
              width: 42.17,
            )
          ],
        ),
      ),
    );
  }
}
