import 'package:flutter/material.dart';

class HeaderTableContent extends StatelessWidget {
  final String category;
  const HeaderTableContent({@required this.category});

  Color categoryColor(String category) {
    category = category.toLowerCase();
    //Color _color;
    var categoryColor = {
      "buruk": Color.fromRGBO(247, 86, 86, 1),
      "kurang baik": Color.fromRGBO(243, 111, 33, 1),
      "baik": Color.fromRGBO(239, 180, 3, 1),
      "sangat baik": Color.fromRGBO(73, 209, 152, 1),
      "istimewa": Color.fromRGBO(16, 120, 202, 1),
      "default": Colors.black
    };

    if (categoryColor.containsKey(category)) {
      return categoryColor[category];
    } else {
      return categoryColor["default"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 1), width: 1))),
      margin: EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Detail Nasabah Churn",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 24),
            ),
            Row(children: [
              Text(
                "Kategori:",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16),
              ),
              SizedBox(
                width: 17.34,
              ),
              Container(
                width: 17.34,
                height: 16,
                decoration: BoxDecoration(color: categoryColor(category)),
              ),
              SizedBox(
                width: 8.67,
              ),
              Text(category,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 16))
            ])
          ],
        ),
      ),
    );
  }
}
