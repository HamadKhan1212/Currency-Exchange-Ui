import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../themes/color.dart';
import '../utils/app_utils.dart';

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.whiteColor,
      ),
      height: AppUtils.getHeight(context, 0.2),
      child: Center(
        child: LineChart(
          LineChartData(
            gridData: FlGridData(
                show: true, verticalInterval: 15, horizontalInterval: 1),
            titlesData: FlTitlesData(show: false),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: const Color(0xff37434d),
                width: 0,
              ),
            ),
            minX: 0,
            maxX: 7,
            minY: 0,
            maxY: 6,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(1, 1),
                  FlSpot(2, 4),
                  FlSpot(3, 2),
                  FlSpot(4, 5),
                  FlSpot(5, 1),
                  FlSpot(6, 4),
                ],
                isCurved: true,
                colors: [Colors.blue],
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BarChartSampleByWeek extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    return BarChart(
      BarChartData(
        gridData: FlGridData(show: true, verticalInterval: 3),
        titlesData: FlTitlesData(
          topTitles: SideTitles(showTitles: false),
          rightTitles: SideTitles(showTitles: false),
          leftTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            showTitles: true,
            getTitles: (value) {
              // Customize x-axis labels for days of the week
              switch (value.toInt()) {
                case 0:
                  return 'Sun';
                case 1:
                  return 'Mon';
                case 2:
                  return 'Tue';
                case 3:
                  return 'Wed';
                case 4:
                  return 'Thu';
                case 5:
                  return 'Fri';
                case 6:
                  return 'Sat';
                default:
                  return '';
              }
            },
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: const Color(0xff37434d),
            width: 0,
          ),
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                y: 2,
                colors: [
                  Color(0xff9C79E5),
                  Color(0xff503981),
                ],
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                y: 1,
                colors: [
                  Color(0xff9C79E5),
                  Color(0xff503981),
                ],
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                y: 2,
                colors: [
                  Color(0xff9C79E5),
                  Color(0xff503981),
                ],
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                y: 1,
                colors: [
                  Color(0xff9C79E5),
                  Color(0xff503981),
                ],
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                y: 2,
                colors: [
                  Color(0xff9C79E5),
                  Color(0xff503981),
                ],
              ),
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                y: 3,
                colors: [
                  Color(0xff9C79E5),
                  Color(0xff503981),
                ],
              ),
            ],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                y: 2,
                colors: [
                  Color(0xff9C79E5),
                  Color(0xff503981),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
