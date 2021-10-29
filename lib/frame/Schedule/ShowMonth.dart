// Calender の月名表示 Widget 用の Script
// CalenderPage.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// showmonth は日付

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';
import 'MonthName.dart';

Widget showMonth(availableSizeHeight, availableSizeWidth, showmonth) {
  return Container(
    width: availableSizeWidth,
    height: availableSizeHeight,
    child: Text(
      monthName[showmonth.month - 1],
      style: TextStyle(
          color: changeColorMain,
          fontFamily: fontMain,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ]),
    ),
  );
}
