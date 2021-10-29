/* 
NewsList.dart/NewsListState
Schedule.dart/Schedule
TimeTable.dart/TimeTable
TodoList.dart/TodoList
                                  から参照 
*/

import 'package:flutter/cupertino.dart';
import 'SettingPages/ChangeColor.dart';
import 'SettingPages/ChangeFont.dart';

Widget titleZone(titlename, availableSizeHeight, availableSizeWidth) {
  return Container(
    width: availableSizeWidth,
    height: availableSizeHeight,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 10),
            blurRadius: 10,
          ),
        ],
        color: Color.fromARGB(255, changeColorMain.red, changeColorMain.green,
            changeColorMain.blue),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        )),
    child: Text(
      titlename,
      style: TextStyle(
        fontFamily: fontMain,
        fontSize: 75,
        color: Color.fromARGB(
            255, changeColorSub.red, changeColorSub.green, changeColorSub.blue),
        fontWeight: FontWeight.w700,
        shadows: [
          Shadow(
            color: shadowColor,
            offset: Offset(0, 5),
            blurRadius: 3,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    ),
  );
}
