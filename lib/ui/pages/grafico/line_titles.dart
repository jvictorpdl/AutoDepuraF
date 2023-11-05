import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

//sou incompetente consegui nao
class LineTitles {
  static getTitleData() => const FlTitlesData(
        show: true,
        topTitles: AxisTitles(
          axisNameSize: 16,
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitles,
          ),
        ),
        rightTitles: AxisTitles(
          axisNameSize: 50,
          drawBelowEverything: true,
        ),
      );

  static Widget leftTitles(double value, TitleMeta meta) {
    TextStyle style = AppTextStyles.h3.copyWith(fontSize: 12);
    return Text(value.toStringAsFixed(1), style: style);
  }
}
