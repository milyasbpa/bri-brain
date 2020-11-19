import 'package:bribrain_project/components/elements/LandingPageTitle.dart';
import 'package:bribrain_project/components/layouts/PageBase.dart';
import 'package:bribrain_project/layout/layout.dart';
import 'package:bribrain_project/styles/colorConst.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  // const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return PageBase(
      judul: '',
      subJudul: '',
      deskripsi: '',
      loginCondition: false,
      contentBeforeLogin: Container(
          width: SizeConfig.blockHorizontal * 100,
          height: SizeConfig.blockVertical * 92.5,
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: LandingPageTitle(
                    judul: 'Selamat Datang di Portal BRIBRAIN',
                    description:
                        'Silakan login untuk mengetahui produk dan layanan BRIBRAIN yang dapat memudahkan pekerjaan Anda',
                    halamanLogin: true,
                  )),
              Divider(),
              Flexible(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockHorizontal * 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login',
                            style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w600,
                                color: Color(Dark_Blue))),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockVertical * 2),
                          width: SizeConfig.blockHorizontal * 20,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Color(0xFFF4F4F4),
                                filled: true,
                                hoverColor: Color(0xFFF4F4F4),
                                labelStyle: TextStyle(color: Color(0xFF8F9AB0)),
                                labelText: 'Personal Number'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockVertical * 2),
                          width: SizeConfig.blockHorizontal * 20,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Color(0xFFF4F4F4),
                                filled: true,
                                hoverColor: Color(0xFFF4F4F4),
                                labelStyle: TextStyle(color: Color(0xFF8F9AB0)),
                                // border: OutlineInputBorder(),
                                labelText: 'Password'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockVertical * 2),
                          width: SizeConfig.blockHorizontal * 20,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Color(0xFFF4F4F4),
                                filled: true,
                                hoverColor: Color(0xFFF4F4F4),
                                labelStyle: TextStyle(color: Color(0xFF8F9AB0)),
                                labelText: 'Captcha'),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
