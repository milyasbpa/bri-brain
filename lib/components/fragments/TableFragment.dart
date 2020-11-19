import 'package:bribrain_project/components/elements/HeaderTableContent.dart';
import 'package:bribrain_project/components/elements/SearchBarContent.dart';
import 'package:bribrain_project/components/elements/TableColumnContent.dart';
import 'package:bribrain_project/components/elements/TableRowContent.dart';
import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';

class TableFragment extends StatelessWidget {
  final String category;
  const TableFragment({@required this.category});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width:SizeConfig.blockHorizontal*60,
      margin: EdgeInsets.only(left: 26, bottom: 22, right: 26, top: 8),
      child: Column(
        children: [
          HeaderTableContent(
            category: category,
          ),
          SearchBarContent(),
          TableColumnContent(),
          TableRowContent(5, 12),
        ],
      ),
    );
  }
}
