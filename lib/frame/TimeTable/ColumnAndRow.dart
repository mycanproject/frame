// TimeTable 時限表示 Widget 用の Script
// WeeklyTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// cAndr は表示する数字(1 ~ 5)

import 'package:flutter/cupertino.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';

Widget columnAndRow(availableSizeHeight, availableSizeWidth, cAndr) {
  return Container(
    width: availableSizeWidth * 0.15,
    height: availableSizeHeight * 0.15,
    child: Text(
      cAndr,
      style: TextStyle(
          color: changeColorMain,
          fontFamily: fontMain,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ]),
      textAlign: TextAlign.center,
    ),
  );
}
