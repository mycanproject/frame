// Todo 画面の日にちごとのTodo一覧 Widget 用の Script
// DayList.dartから参照
// TodoDate.dartから参照
// data はcsvファイルから取ってきた Todo のデータ
// availableSize(Height, Width) は縦横のサイズ
// onListView は中身の有無

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';
import 'ShowdayListView.dart';
import 'TodoDataRow.dart';

class DayBox extends StatelessWidget {
  final TodoDataRow? data;
  final double availableSizeHeight;
  final double availableSizeWidth;
  final bool onListView;
  final bool onMain;
  final int length;

  DayBox(this.data, this.availableSizeHeight, this.availableSizeWidth,
      this.onListView, this.onMain, this.length);

  @override
  Widget build(BuildContext context) {
    DateTime showday = DateTime(
        int.parse(data!.datetimeYear),
        int.parse(data!.datetimeMonth),
        int.parse(data!.datetimeDay),
        int.parse(data!.datetimeHour),
        int.parse(data!.datetimeMinute));
    return Container(
        width: availableSizeWidth * 0.8,
        height: availableSizeHeight * 0.5,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, changeColorSub.red, changeColorSub.green,
                changeColorSub.blue),
            border: Border.all(
              width: 3,
              color: Color.fromARGB(100, changeColorMain.red,
                  changeColorMain.green, changeColorMain.blue),
            ),
            borderRadius: (onListView)
                ? BorderRadius.circular(15)
                : BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                offset: Offset(0, 3),
                blurRadius: 2,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (!onMain)
              Container(
                width: availableSizeWidth,
                height: (onListView)
                    ? availableSizeHeight * 0.15
                    : availableSizeHeight * 0.9,
                child: Text(
                  DateFormat("MM月 dd日").format(showday),
                  style: TextStyle(
                    color: Color.fromARGB(150, changeColorMain.red,
                        changeColorMain.green, changeColorMain.blue),
                    fontFamily: fontMain,
                    fontSize: (onListView) ? 20 : 10,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        color: shadowColor,
                        offset: Offset(0, 3),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            if (onListView)
              Container(
                width: availableSizeWidth,
                height: availableSizeHeight * 0.8,
                child: ShowdayTodoListView(showday, availableSizeHeight * 0.5,
                    availableSizeWidth, data, onMain),
              ),
          ],
        ));
  }
}
