import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class SubscriberSeries{
  final String kategori;
  final int jmlRekening;
  final charts.Color barColor;

  SubscriberSeries({
    @required this.kategori,
    @required this.jmlRekening,
    @required this.barColor
  });
}