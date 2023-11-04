import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

//sou incompetente consegui nao
class LineTitles {
  static getTitleData() => const FlTitlesData(
        show: true,
        topTitles: AxisTitles(
          axisNameSize: 16,
          // drawBelowEverything: true,
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            // interval: 1,
            reservedSize: 50,
            getTitlesWidget: leftTitles,
          ),
        ),
        rightTitles: AxisTitles(
          axisNameSize: 50,
          drawBelowEverything: true,
          // axisNameSize: 0,
        ),
      );

  static Widget leftTitles(double value, TitleMeta meta) {
    TextStyle style = AppTextStyles.h3.copyWith(fontSize: 12);
    return Text("${value.toStringAsFixed(1)}DT", style: style);
  }
}
