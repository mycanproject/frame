// Calender の月ごとの中身表示 Widget 用の Script
// CalenderPage.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// showmonth は日付

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CalBox.dart';

Widget showCalender(availableSizeHeight, availableSizeWidth, showmonth) {
  return Center(
    child: Container(
      width: availableSizeWidth,
      height: availableSizeHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int x = -1; x <= 4; x++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int y = 1; y <= 7; y++)
                  calBox(
                      availableSizeHeight * 0.15,
                      availableSizeWidth * 0.1075,
                      showmonth.add(Duration(days: ((x * 7) + y))),
                      showmonth)
              ],
            )
        ],
      ),
    ),
  );
}
