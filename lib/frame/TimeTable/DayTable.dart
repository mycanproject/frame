// TimeTable 曜日ごとの Widget 用の Script
// WeeklyTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// weekly は曜日を表す数字(0 ~ 4)

import 'package:flutter/cupertino.dart';
import 'package:framework/MainPages/TimetableInMain.dart';
import 'ColumnAndRow.dart';
import 'Weeks.dart';

Widget dayTable(availableSizeHeight, availableSizeWidth, weekly) {
  return Container(
    width: availableSizeWidth * 0.15,
    height: availableSizeHeight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        columnAndRow(availableSizeHeight, availableSizeWidth, weeks[weekly]),
        timetableInMain(
            availableSizeHeight * 0.85, availableSizeWidth, weekly + 1),
      ],
    ),
  );
}
