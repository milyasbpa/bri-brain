import 'package:bribrain_project/layout/layout.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  // const NavigationBar({@required this.loginCondition});
  // final loginCondition;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        color: Color.fromRGBO(0, 84, 155, 1),
        height: SizeConfig.blockVertical * 7.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          "images/Logo.png",
                        ),
                      ),
                      // FlatButton(onPressed: Navigation, child: Text('Produk dan Layanan')),
                    ],
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                          flex: 3,
                          child: SizedBox(
                              child: Image.asset(
                            "images/profpic-icon.png",
                          ))),
                      Flexible(
                        flex: 1,
                        child: Container(
                            child: Row(children: [
                          Expanded(
                              child: Text(
                            'Bobby Sujatmiko',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockHorizontal * 0.9),
                            textAlign: TextAlign.center,
                          ))
                        ])),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          width: SizeConfig.blockHorizontal * 0.5,
                          height: SizeConfig.blockHorizontal * 0.5,
                          child: Image.asset("images/BottomArrow.png"),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
