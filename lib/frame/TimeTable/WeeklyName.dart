// TimeTable 曜日の名前 Widget 用の Script
// DayTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// weekly は曜日を表す数字(0 ~ 4)

import 'package:flutter/cupertino.dart';
import 'ColumnAndRow.dart';
import 'Weeks.dart';

class WeeklyName extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  final int weekly;
  WeeklyName(this.availableSizeHeight, this.availableSizeWidth, this.weekly);
  @override
  Widget build(BuildContext context) {
    return ColumnAndRow(availableSizeHeight, availableSizeWidth, weeks[weekly]);
  }
}
