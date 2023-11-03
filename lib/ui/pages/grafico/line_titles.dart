import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


//sou incompetente consegui nao 
class LineTitles {
  static getTitleData() =>  const FlTitlesData(
    show: true,
     topTitles: AxisTitles(
      axisNameSize: 16,
      // drawBelowEverything: true,
     ),
     rightTitles: AxisTitles(
      // axisNameSize: 50,
      // drawBelowEverything: true,
     ),

  );

}

