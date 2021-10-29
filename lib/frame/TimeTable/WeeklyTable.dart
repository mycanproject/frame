// TimeTable 全体の Widget 用の Script
// TimeTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'ColumnAndRow.dart';
import 'DayTable.dart';

Widget weeklyTable(availableSizeHeight, availableSizeWidth) {
  return Container(
    width: availableSizeWidth,
    height: availableSizeHeight,
    child: Row(
      children: [
        Container(
          width: availableSizeWidth * 0.15,
          height: availableSizeHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: availableSizeWidth * 0.15,
                height: availableSizeHeight * 0.15,
              ),
              for (int i = 1; i <= 5; i++)
                columnAndRow(
                    availableSizeHeight, availableSizeWidth, i.toString()),
            ],
          ),
        ),
        for (int l = 0; l <= 4; l++)
          dayTable(availableSizeHeight, availableSizeWidth, l),
      ],
    ),
  );
}
