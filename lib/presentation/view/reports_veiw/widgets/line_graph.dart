import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../resources/styles_manager.dart';

class LineGraph extends StatelessWidget {
  LineGraph(this.data, {Key? key}) : super(key: key);

  final List<int> data;
  late final double maxData = max(data).toDouble();
  late final int scale = ((maxData ~/ 25) * 5) + 1;

  int max(List<int> list) {
    int max = 0;
    for (int i = 0; i < list.length; i++) {
      if (list[i] > max) {
        max = list[i];
      }
    }
    return max == 0 ? 100 : max;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingManager.p8,
      child: AspectRatio(
        aspectRatio: 2,
        child: LineChart(
          mainData(context),
        ),
      ),
    );
  }

  LineChartData mainData(BuildContext context) {
    return LineChartData(
        minX: 0,
        maxX: data.length.toDouble(),
        minY: 0,
        maxY: maxData,
        lineBarsData: [
          LineChartBarData(
            spots: List.generate(data.length, (index) {
              return FlSpot(index.toDouble(), data[index].toDouble());
            }).toList(),
            isCurved: true,
            color: Theme.of(context).colorScheme.onSecondary,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: false,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ],
        titlesData: FlTitlesData(
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              interval: scale.toDouble(),
              getTitlesWidget: (val, _) => Padding(
                padding: PaddingManager.p8,
                child: Text(
                  val % (scale) == 0 ? "${val.round()}" : '',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
          ),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: (val, _) => Text(
              '',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          )),
        ),
        gridData: FlGridData(
          show: false,
          drawVerticalLine: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Theme.of(context).colorScheme.onSecondary,
              strokeWidth: 0.25,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: Theme.of(context).colorScheme.onSecondary,
              strokeWidth: 0.25,
            );
          },
        ),
        borderData: FlBorderData(
          show: true,
          border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary,
                width: 2,
              ),
              left: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary, width: 2)),
        ));
  }
}
