// TimeTable 全体の Widget 用の Script
// TimeTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'ColumnAndRow.dart';
import 'DayTable.dart';

class WeeklyTable extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  WeeklyTable(this.availableSizeHeight, this.availableSizeWidth);
  @override
  Widget build(BuildContext context) {
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
                  ColumnAndRow(
                      availableSizeHeight, availableSizeWidth, i.toString()),
              ],
            ),
          ),
          for (int l = 0; l <= 4; l++)
            DayTable(availableSizeHeight, availableSizeWidth, l),
        ],
      ),
    );
  }
}
