// TimeTable 曜日ごとの Widget 用の Script
// WeeklyTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// weekly は曜日を表す数字(0 ~ 4)

import 'package:flutter/cupertino.dart';
import 'package:framework/MainPages/TimetableInMain.dart';
import 'WeeklyName.dart';

class DayTable extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  final int weekly;
  DayTable(this.availableSizeHeight, this.availableSizeWidth, this.weekly);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth * 0.15,
      height: availableSizeHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeeklyName(availableSizeHeight, availableSizeWidth, weekly),
          TimetableInMain(
              availableSizeHeight * 0.85, availableSizeWidth, weekly + 1),
        ],
      ),
    );
  }
}
