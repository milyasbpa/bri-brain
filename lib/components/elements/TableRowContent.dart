import 'dart:math';
import 'package:flutter/material.dart';

class TablePageContent extends StatelessWidget {
  final int start, end, total;
  TablePageContent(this.start, this.end, this.total);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Showing $start to $end of $total entries",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12,
                color: Color.fromRGBO(115, 128, 140, 1)),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Color.fromRGBO(196, 198, 201, 1),
                    size: 11,
                  )),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Text(
                      "1",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontSize: 10,
                          color: Color.fromRGBO(83, 101, 119, 1)),
                    ),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(83, 101, 119, 1), size: 11))
            ],
          )
        ],
      ),
    );
  }
}


class ItemName extends StatelessWidget {
  final String name;
  ItemName(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Text(
        name,
        style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 10,
            color: Color.fromRGBO(130, 130, 130, 1)),
      ),
    );
  }
}

class ItemValue extends StatelessWidget {
  final String value;
  ItemValue(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(
      ": " + value,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 10,
          color: Color.fromRGBO(0, 0, 0, 1)),
    );
  }
}

class DetailTableContent extends StatelessWidget {
  final bool _detailVisible;
  DetailTableContent(this._detailVisible);
  
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _detailVisible,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          
          child: Row(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemName("mbdesc"),
                    ItemName("brdesc"),
                    ItemName("citno"),
                    ItemName("recency"),
                    ItemName("ds")
                  ],
                ),
              ),
              SizedBox(width: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemValue("KC Medan Thamrin"),
                  ItemValue("UNIT WOLEM ISKANDAR MEDAN ASIA"),
                  ItemValue("SECF789"),
                  ItemValue("15"),
                  ItemValue("202010"),
                ],
              ),
              SizedBox(width: 60,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemName("jumlah transaksi"),
                  ItemName("transaksi masuk"),
                  ItemName("transaksi keluar"),
                  ItemName("Briscore Churn"),
                ],
              ),
              SizedBox(width: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemValue("9"),
                  ItemValue("0"),
                  ItemValue("9"),
                  ItemValue("79"),
                ],
              ),
              SizedBox(width: 70,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemName("Tindak Lanjut"),
                      SizedBox(width: 18,),
                      ItemName(":"),
                    ],
                  ),
                  SizedBox(height: 50,)
                ],
              ),
              SizedBox(width: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 215,
                    height: 73,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(192,192,192,1),
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(4)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(top:4.0,left: 8.0,right: 8.0),
                      child: TextFormField(
                        maxLines: 10,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 10,
                        ),

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tuliskan rencana tindak lanjut Anda di sini",
                          hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            fontSize : 10,
                          ),
                          hintMaxLines: 2
                        ),
                      ),
                    ),
                  ),
    
                 SizedBox(height: 8,),


                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      width: 98,
                      height: 38,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(16,120,202,1),

                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins", // change to "Avenir Next"
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                        ),
                        ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class RowValue extends StatelessWidget {
  final String value;
  final double width;
  RowValue(this.value, this.width);
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 10),
    );
  }
}

class HandleStatus extends StatelessWidget {
  final String status;
  final double width;
  HandleStatus(this.status, this.width);
  @override
  Widget build(BuildContext context) {
    var _icon;
    if (status == "sudah") {
      _icon = "Icon-Done";
    } else {
      _icon = "Icon-NotYet";
    }
    return Image.asset("images/" + _icon + ".png");
  }
}

class Rows extends StatefulWidget {
  final String rekening, namaNasabah, status;
  final int churnScore;
  final double churnProb, saldo, transfer;

  @override
  Rows(this.rekening, this.namaNasabah, this.saldo, this.transfer,
      this.churnScore, this.churnProb, this.status);

  @override
  _RowsState createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  int _angle = 0;
  bool _detailVisible = false;

  void _buttonPressed() {
    setState(() {
      _angle = _angle == 0 ? 90 : 0;
      _detailVisible = !_detailVisible;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: !_detailVisible
                ? Colors.white
                : Color.fromRGBO(234, 246, 255, 1),
            border: Border(
              bottom:
                  BorderSide(color: Color.fromRGBO(220, 223, 224, 1), width: 1),
              top: !_detailVisible
                  ? BorderSide(
                      color: Color.fromRGBO(220, 223, 224, 1), width: 1)
                  : BorderSide.none,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 90, child: RowValue(widget.rekening, 90)),
                Container(
                    width: 150,
                    child: RowValue(widget.namaNasabah.toUpperCase(), 130)),
                Container(
                    width: 130,
                    child: RowValue("Rp" + widget.saldo.toString(), 180)),
                Container(
                    width: 130,
                    child: RowValue("Rp." + widget.transfer.toString(), 180)),
                Container(
                    width: 60,
                    child: RowValue(widget.churnScore.toString(), 180)),
                Container(
                    width: 60,
                    child: RowValue(widget.churnProb.toString() + "%", 80)),
                Container(width: 80, child: HandleStatus(widget.status, 80)),
                Container(
                    width: 40,
                    height: 20,
                    // decoration: BoxDecoration(
                    //   color: Colors.blue,
                    // ),
                    child: FlatButton(
                        onPressed: _buttonPressed,
                        child: Transform.rotate(
                            angle: _angle * pi / 180,
                            child: Image.asset("images/Arrow.png"))))
              ],
            ),
          ),
        ),
        DetailTableContent(_detailVisible)
      ],
    );
  }
}


class TableRowContent extends StatelessWidget {
  final int startOFData, endOfData;
  TableRowContent(this.startOFData, this.endOfData);

  @override
  Widget build(BuildContext context) {
    var rekeningList = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12"
    ];

    return Container(
      margin: EdgeInsets.only(bottom: 18.75),
      child: Column(
        children: [
          Column(
            children: rekeningList.sublist(startOFData, endOfData).map((item) {
              return (Rows(item, "Adi Suryana Saputra", 300, 240000000.00, 356,
                  88.75, "belum"));
            }
            ).toList(),
          ),
            TablePageContent(startOFData+1, endOfData, rekeningList.length)
        ],
      ),
    );
  }
}
