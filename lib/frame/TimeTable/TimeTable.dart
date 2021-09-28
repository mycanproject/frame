// TimeTable 画面全体の Widget 用の Script

import 'package:flutter/cupertino.dart';
import '../TitleZone.dart';
import 'WeeklyTable.dart';

class TimeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height * 0.8;
    final double availableSizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight,
      child: Column(
        children: [
          TitleZone('TimeTable', availableSizeHeight * 0.2, availableSizeWidth),
          WeeklyTable(availableSizeHeight * 0.8, availableSizeWidth * 0.8)
        ],
      ),
    );
  }
}
