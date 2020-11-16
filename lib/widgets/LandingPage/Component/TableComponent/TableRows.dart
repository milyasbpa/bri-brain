import 'package:flutter/material.dart';

class RowValue extends StatelessWidget {
  final String value;
  RowValue(this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        value,
        style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 10),
      ),
    );
  }
}

class HandleStatus extends StatelessWidget {
  final String status;
  HandleStatus(this.status);
  @override
  
  Widget build(BuildContext context) {
    var _icon;
    if (status == "sudah") {
      _icon = "Icon-Done";
    } else {
      _icon = "Icon-NotYet";
    }
    return Container(
      child: Image.asset("images/"+_icon+".png"),
    );
  }
}

class Rows extends StatelessWidget {
  final String rekening, namaNasabah, status;
  final int churnScore;
  final double churnProb, saldo, transfer;

  @override
  Rows(this.rekening, this.namaNasabah, this.saldo, this.transfer,
      this.churnScore, this.churnProb, this.status);
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromRGBO(220,223,224,1), width: 1)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RowValue(rekening),
            RowValue(namaNasabah.toUpperCase()),
            RowValue("Rp" + saldo.toString()),
            RowValue("Rp." + transfer.toString()),
            RowValue(churnScore.toString()),
            RowValue(churnProb.toString()+"%"),
            HandleStatus(status),
            Image.asset("images/Arrow.png")
          ],
        ),
      ),
    );
  }
}

class TableRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Rows("5661*******0532", "Adi Saputra", 300, 240000000.00, 356, 88.75,"belum"),
          Rows("5211*******8674", "RANDI SURYA", 14400, 240000000.00, 321, 95.7,"sudah"),
        ],
      ),
    );
  }
}
