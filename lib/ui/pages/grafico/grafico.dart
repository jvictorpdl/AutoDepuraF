import 'package:auto_depura/ui/pages/grafico/line_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LinechartWidget extends StatefulWidget {
  final List<Color> grandientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  LinechartWidget({super.key});

  @override
  State<LinechartWidget> createState() => _LinechartWidgetState();
}

class _LinechartWidgetState extends State<LinechartWidget> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: LineChart(
          LineChartData(
              minX: 0,
              maxX: 90,
              minY: 0,
              maxY: 90,
              clipData: const FlClipData.all(),
              backgroundColor: const Color(0xfffefefe),
              titlesData: LineTitles.getTitleData(),
              gridData: FlGridData(
                show: true,
                getDrawingHorizontalLine: (value) {
                  return const FlLine(
                    color: Color.fromARGB(68, 121, 131, 141),
                    strokeWidth: 1,
                  );
                },
                drawVerticalLine: true,
                getDrawingVerticalLine: (value) {
                  return const FlLine(
                    color: Color.fromARGB(68, 121, 131, 141),
                    strokeWidth: 1,
                  );
                },
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: const Color(0xff37434d), width: 1),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(20, 5),
                    const FlSpot(30, 7),
                    const FlSpot(40, 6),
                    const FlSpot(50, 8),
                    const FlSpot(60, 7),
                    const FlSpot(70, 6.5),
                  ],
                  isCurved: true,
                  color: const Color(0xff23b6e6),
                  barWidth: 5,
                  preventCurveOverShooting: true,

                ),
                LineChartBarData(
                  //Spots do ODmin aqui
                  spots: [
                    const FlSpot(20, 6),
                    const FlSpot(30, 6),
                    const FlSpot(40, 6),
                    const FlSpot(50, 6),
                    const FlSpot(60, 6),
                    const FlSpot(70, 6),
                  ],
                  barWidth: 5,
                  color: const Color(0xff02d39a),
                  preventCurveOverShooting: true,
                  dotData: const FlDotData(show: false),
                ),
              ]),

          //  swapAnimationDuration: const Duration(milliseconds: 150), // Optional
          //  swapAnimationCurve: Curves.linear,
        ),
      );
}
