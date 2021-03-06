import 'package:bribrain_project/components/elements/NavigationBar.dart';
import 'package:bribrain_project/pages/PageHeader.dart';
import 'package:flutter/material.dart';

class PageBase extends StatelessWidget {
  const PageBase(
      {@required this.judul,
      @required this.subJudul,
      @required this.deskripsi,
      this.content,
      this.loginCondition,
      this.contentBeforeLogin});
  final judul, subJudul, deskripsi, content,loginCondition,contentBeforeLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavigationBar(loginCondition: loginCondition,),
            loginCondition ? PageHeader(
                judul: judul,
                subjudul: subJudul,
                deskripsi: deskripsi,
                content: content
            ) : contentBeforeLogin,
          ],
        ),
      ),
    );
  }
}
