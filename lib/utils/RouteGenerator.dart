import 'package:bribrain_project/components/layouts/PageBase.dart';
import 'package:bribrain_project/pages/Evaluasi/HasilTindakLanjut.dart';
import 'package:bribrain_project/pages/Evaluasi/TingkatKeberhasilan.dart';
import 'package:bribrain_project/pages/Main/Login.dart';
import 'package:bribrain_project/pages/Main/ProdukLayanan.dart';
import 'package:bribrain_project/pages/Mikro/ChurnAnalytics.dart';
import 'package:bribrain_project/pages/Mikro/RekomendasiProduk.dart';
import 'package:bribrain_project/pages/Main/LandingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LandingPage());
      case '/produk-layanan':
        return MaterialPageRoute(builder: (context) => ProdukLayanan());
      case '/login':
        return MaterialPageRoute(builder: (context) => Login());
      case '/mikro/churn-analytics':
        return MaterialPageRoute(builder: (context) => ChurnAnalytics());
      case '/mikro/rekomendasi-produk':
        return MaterialPageRoute(builder: (context) => RekomendasiProduk());
      case '/evaluasi/tingkat-keberhasilan':
        return MaterialPageRoute(builder: (context) => TingkatKeberhasilan());
      case '/evaluasi/hasil-tindak-lanjut':
        return MaterialPageRoute(builder: (context) => HasilTindakLanjut());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return PageBase(
          judul: '', subJudul: 'Halaman Tidak Ditemukan', deskripsi: '',loginCondition: false,);
    });
  }
}
