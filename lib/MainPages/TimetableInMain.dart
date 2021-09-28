// TimeTable 曜日ごとの Widget 用の Script
// DayTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// showWeekly は曜日

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../frame/TimeTable/Subject.dart';
import '../frame/SettingPages/ChangeColor.dart';
import '../frame/SettingPages/ChangeFont.dart';

class TimetableInMain extends StatelessWidget {
  // TimeTable.dart/DayTableから参照
  //MainPage.dart/_SliderViewから参照
  final double availableSizeHeight;
  final double availableSizeWidth; //利用可能な画面サイズ
  final String showWeekly; //表示する日付

  TimetableInMain(
      this.availableSizeHeight, this.availableSizeWidth, this.showWeekly);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: availableSizeWidth,
        height: availableSizeHeight, //時間割部分の幅
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //列(縦)に並べる
          children: [
            SubjectBox(1, availableSizeHeight * 0.175, showWeekly),
            SubjectBox(2, availableSizeHeight * 0.175, showWeekly),
            SubjectBox(3, availableSizeHeight * 0.175, showWeekly),
            SubjectBox(4, availableSizeHeight * 0.175, showWeekly),
            SubjectBox(5, availableSizeHeight * 0.175, showWeekly), //1~5限
          ],
        ),
      ),
    );
  }
}

class SubjectBox extends StatelessWidget {
  // TimetableInMain.dart/TimetebleInMainから参照
  final int period; //何限目か取得する
  final double boxsize; //箱のサイズ
  final String showWeekly; //表示する日付

  SubjectBox(this.period, this.boxsize, this.showWeekly);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxsize,
      height: boxsize, //サイズを指定
      decoration: BoxDecoration(
        color: Color.fromARGB(200, changeColorSub.red, changeColorSub.green,
            changeColorSub.blue), // サブカラーを不透明度200で指定
        borderRadius: BorderRadius.circular(10), // 角を10で丸める
        border: Border.all(
          width: 3,
          color: Color.fromARGB(150, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue),
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 10),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {}, //テキストボタンの設定
        child: Text(
          getSubject(showWeekly, period), //TimeTable.dartから表示する授業を取得する
          style: TextStyle(
            fontFamily: fontMain,
            fontSize: boxsize * 0.3,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(200, changeColorMain.red,
                changeColorMain.green, changeColorMain.blue),
            shadows: [
              Shadow(
                color: shadowColor,
                offset: Offset(0, 3),
                blurRadius: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
