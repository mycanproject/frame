import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
//import 'indicator.dart';

class PieData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieDataState();
}

class PieDataState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(PieChartData(
        centerSpaceColor: Color(0x00ffffff),
        startDegreeOffset: -90,
        pieTouchData:
            PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                pieTouchResponse == null ||
                pieTouchResponse.touchedSection == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
          });
        }),
        borderData: FlBorderData(
          show: false,
        ),
        sectionsSpace: 0,
        centerSpaceRadius: 20,
        sections: showingSections()));
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 0.0 : 0.0;
      final radius = isTouched ? 4.0 : 20.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 70,
            //title: '70%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0x00ffffff),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          throw Error();
      }
    });
  }
}
