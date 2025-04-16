import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mdmfit/const/colors.dart';

class RevenueGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // Small graph height
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 2),
                FlSpot(2, 1.5),
                FlSpot(3, 3),
                FlSpot(4, 2.5),
                FlSpot(5, 3.5),
              ],
              isCurved: true,
              barWidth: 2,
              color: TColor.secondaryColor2,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                  TColor.primaryColor1,
                    TColor.white
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              dotData: FlDotData(show: false),
            ),
          ],
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 4,
        ),
      ),
    );
  }
}
