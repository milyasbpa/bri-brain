import 'package:flutter/material.dart';
import 'package:bribrain_project/styles/colorConst.dart';
import 'package:bribrain_project/layout/layout.dart';

class LandingPageTitle extends StatelessWidget {
  const LandingPageTitle({@required this.judul, @required this.description,this.halamanLogin=false});
  final judul, description,halamanLogin;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
          width: SizeConfig.blockHorizontal * 100,
          decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("images/Bribrain.png"),
            //   fit: BoxFit.cover,
            // ),
            color: Color(BribrainColor),
          ),
          child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: halamanLogin?0:SizeConfig.blockVertical * 5,
                  horizontal: SizeConfig.blockHorizontal * 10),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: halamanLogin ? MainAxisAlignment.center  : MainAxisAlignment.start,
                        children: [
                          Wrap(
                            children: [
                              Container(
                                margin:EdgeInsets.fromLTRB(0, 0, 0, SizeConfig.blockVertical*1.5),
                                child: Text(judul,
                                    style: TextStyle(
                                        fontSize: 38, color: Colors.white)),
                              ),
                              Container(
                                margin:EdgeInsets.fromLTRB(0, 0, 0, SizeConfig.blockVertical*4),
                                child: Text(description,
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white)),
                              ),
                              FlatButton(
                                  minWidth: 163,
                                  height: 60,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/mikro/churn-analytics');
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(color: Colors.white)),
                                  child: Text(
                                    'JELAJAHI',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  halamanLogin ? Container() : Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(White),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.09),
                              blurRadius: 8.0,
                              offset: new Offset(0, 2))
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
