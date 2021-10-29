// TimeTable 曜日ごとの Widget 用の Script
// DayTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// showWeekly は曜日

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../frame/TimeTable/Subject.dart';
import '../frame/SettingPages/ChangeColor.dart';
import '../frame/SettingPages/ChangeFont.dart';
import '../frame/Subject/SubjectData.dart';

Widget timetableInMain(availableSizeHeight, availableSizeWidth, showWeekly) {
  return Center(
    child: Container(
      width: availableSizeWidth,
      height: availableSizeHeight, //時間割部分の幅
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //列(縦)に並べる
        children: [
          subjectBox(1, availableSizeHeight * 0.175, showWeekly),
          subjectBox(2, availableSizeHeight * 0.175, showWeekly),
          subjectBox(3, availableSizeHeight * 0.175, showWeekly),
          subjectBox(4, availableSizeHeight * 0.175, showWeekly),
          subjectBox(5, availableSizeHeight * 0.175, showWeekly), //1~5限
        ],
      ),
    ),
  );
}

Widget subjectBox(period, boxsize, showWeekly) {
  // TimetableInMain.dart/TimetebleInMainから参照
  return FutureBuilder(
      future: getSubject(),
      builder: (BuildContext context, AsyncSnapshot<List<Subject>> snapshot) {
        if (!snapshot.hasData) {
          return Container(
            width: boxsize,
            height: boxsize,
            child: Text(
              "",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: fontMain,
                  fontSize: 30,
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
        } else if (snapshot.data!.length == 0) {
          return Container(
            width: boxsize,
            height: boxsize,
            child: Text(
              "None",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: fontMain,
                  fontSize: 30,
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
        } else {
          return Container(
            width: boxsize,
            height: boxsize, //サイズを指定
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  200,
                  changeColorSub.red,
                  changeColorSub.green,
                  changeColorSub.blue), // サブカラーを不透明度200で指定
              borderRadius: BorderRadius.circular(10), // 角を10で丸める
              border: Border.all(
                width: 3,
                color: Color.fromARGB(150, changeColorMain.red,
                    changeColorMain.green, changeColorMain.blue),
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SubjectData()));
                }, //テキストボタンの設定
                child:
                    periodSubject(period, boxsize, showWeekly - 1, snapshot)),
          );
        }
      });
}

Widget periodSubject(period, boxsize, showWeekly, snapshot) {
  switch (period) {
    case 1:
      return Text(
        snapshot.data![showWeekly].subject1,
        style: TextStyle(
          fontFamily: fontMain,
          fontSize: boxsize * 0.3,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(200, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue),
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ],
        ),
      );
    case 2:
      return Text(
        snapshot.data![showWeekly].subject2,
        style: TextStyle(
          fontFamily: fontMain,
          fontSize: boxsize * 0.3,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(200, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue),
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ],
        ),
      );
    case 3:
      return Text(
        snapshot.data![showWeekly].subject3,
        style: TextStyle(
          fontFamily: fontMain,
          fontSize: boxsize * 0.3,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(200, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue),
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ],
        ),
      );
    case 4:
      return Text(
        snapshot.data![showWeekly].subject4,
        style: TextStyle(
          fontFamily: fontMain,
          fontSize: boxsize * 0.3,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(200, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue),
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ],
        ),
      );
    case 5:
      return Text(
        snapshot.data![showWeekly].subject5,
        style: TextStyle(
          fontFamily: fontMain,
          fontSize: boxsize * 0.3,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(200, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue),
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ],
        ),
      );
    default:
      return Text(
        "none",
        style: TextStyle(
          fontFamily: fontMain,
          fontSize: boxsize * 0.3,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(200, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue),
          shadows: [
            Shadow(
              color: shadowColor,
              offset: Offset(0, 3),
              blurRadius: 2,
            )
          ],
        ),
      );
  }
}
