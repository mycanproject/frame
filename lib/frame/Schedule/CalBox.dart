// Calender の個々の日にち Widget 用の Script
// ShowMonth.dartから参照
// ShowCalender.dartからの参照
// availableSize(Height, Width) は縦横のサイズ
// showmonth は日付
// monthfirst は showmonth の月の一日

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';

Widget calBox(availableSizeHeight, availableSizeWidth, showday, monthfirst) {
  final DateTime exactdate = showday
      .add(Duration(days: (monthfirst.weekday == 7) ? 0 : -monthfirst.weekday));
  return Container(
    width: availableSizeWidth,
    height: availableSizeHeight,
    child: Text(
      exactdate.day.toString(),
      style: TextStyle(
          color: (exactdate.month == monthfirst.month)
              ? Colors.black
              : Colors.black26,
          fontFamily: fontMain,
          fontSize: (exactdate.month == monthfirst.month) ? 25 : 15,
          fontWeight: FontWeight.w700,
          shadows: [
            Shadow(
              color: changeColorMain,
              offset: Offset(0, 3),
              blurRadius: 2,
            ),
          ]),
      textAlign: TextAlign.center,
    ),
  );
}
