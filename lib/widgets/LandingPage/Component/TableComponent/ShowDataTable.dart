//import 'package:bribrain_project/widgets/LandingPage/Component/Table.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/TableComponent/HeaderTable.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/TableComponent/SubHeader.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/TableComponent/TableColumn.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/TableComponent/TablePage.dart';
import 'package:bribrain_project/widgets/LandingPage/Component/TableComponent/TableRows.dart';
import 'package:flutter/material.dart';


class ShowDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 26,bottom: 22,right: 26,top: 8) ,
      child: Column(
        children: [
          HeaderTable(),
          SubHeader(),
          TableColumn(),
          TableRows(),
          TablePage()
          ],
      ),
    );
  }
}