import 'package:bribrain_project/components/elements/LandingPageTop.dart';
import 'package:bribrain_project/components/fragments/LandingPageTitle.dart';
import 'package:bribrain_project/components/fragments/BottomListFragment.dart';
import 'package:bribrain_project/components/fragments/CardProdukFragment.dart';
import 'package:bribrain_project/components/fragments/ProdukLayananTop.dart';
import 'package:bribrain_project/components/layouts/PageBase.dart';
import 'package:flutter/material.dart';
import 'package:bribrain_project/layout/layout.dart';

class ProdukLayanan extends StatelessWidget {
  // const ProdukLayanan({Key key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LandingPageTitle(
            //     judul: 'Jelajahi Berbagai Layanan BRIBRAIN',
            //     description:
            //         'Temukan berbagai manfaat yang dapat mempermudah tenaga pemasar di lapangan dalam melakukan akuisisi dan retensi nasabah'),
            LandingPageTop(),
            CardProdukFragment(
              judul: ['BRI Score', 'Geolocation'],
              deskripsi: [
                'Deskripsi singkat mengenai BRI Score',
                'Layanan yang mempermudah tenaga pemasar melihat peta persebaran lokasi Branch BRI, pasar, agen BRILINK, dan agunan.'
              ],
              menu: 'General',
              deskripsiMenu:
                  'Sajikan informasi lengkap untuk konsumen tanpa harus meninggalkan aplikasi Anda',
              icon:[
                '/images/briscore-produklayanan-icon.png',
                '/images/geolocation-produklayanan-icon.png',
              ],
            ),
            CardProdukFragment(
              judul: ['Akuisisi', 'Retensi'],
              deskripsi: [
                'Deskripsi singkat akuisisi',
                'Deskripsi singkat retensi'
              ],
              menu: 'Mikro',
              deskripsiMenu:
                  'Skor dan Model Direktorat Mikro',
              icon:[
                '/images/akuisisi-produklayanan-icon.png',
                '/images/retensi-produklayanan-icon.png',
              ],
            ),
            CardProdukFragment(
              judul: ['Akuisisi', 'Retensi'],
              deskripsi: [
                'Deskripsi singkat mengenai BRI Score',
                'Layanan yang mempermudah tenaga pemasar melihat peta persebaran lokasi Branch BRI, pasar, agen BRILINK, dan agunan.'
              ],
              menu: 'General',
              deskripsiMenu:
                  'Sajikan informasi lengkap untuk konsumen tanpa harus meninggalkan aplikasi Anda',
              icon:[
                '/images/akuisisi-produklayanan-icon.png',
                '/images/retensi-produklayanan-icon.png',
              ],
            ),
            CardProdukFragment(
              judul: ['Tingkat Keberhasilan', 'Click Rate', 'Rencana Tindak Lanjut'],
              deskripsi: [
                'Evaluasi terhadap keberhasilan model yang sudah dibuat dan dibandingkan dengan kondisi di lapangan yang sudah atau belum dilakukan oleh tenaga pemasar.',
                'Monitoring fitur yang paling banyak digunakan dan melihat histori klik yang dilakukan tenaga pemasar pada aplikasi.',
                'Monitoring fitur yang paling banyak digunakan dan melihat histori klik yang dilakukan tenaga pemasar pada aplikasi.',
              ],
              menu: 'Evaluasi',
              deskripsiMenu:
                  'Monitoring dan Evaluasi',
              icon:[
                '/images/tingkatkeberhasilan-produklayanan-icon.png',
                '/images/clickrate-produklayanan-icon.png',
                '/images/rencanatindaklanjut-produklayanan-icon.png',
              ],
            ),
            BottomListFragment(),
          ],
        ),
      ),
    );
  }
}
