// MainPage　メインページ内の　Todo　用の　widget　の　script
// MainPage から参照
// availeSize は縦横のサイズ
// showday は日付

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../frame/SettingPages/ChangeColor.dart';
import '../frame/SettingPages/ChangeFont.dart';
import '../frame/TodoPages/DayBox.dart';
import '../frame/TodoPages/TodoDataRow.dart';

class TodoInMain extends StatelessWidget {
  // MainPage.dart/_SliderViewから参照
  final double availableSize;
  final DateTime showday;

  TodoInMain(this.availableSize, this.showday); //利用可能な画面サイズと表示する日付を取得する

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getTodoDate(),
        builder:
            (BuildContext context, AsyncSnapshot<List<TodoDataRow>> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              width: availableSize,
              height: availableSize,
              child: Text(
                "Now Loading",
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
                textAlign: TextAlign.center,
              ),
            );
          } else if (snapshot.data!.length == 0) {
            return Container(
              width: availableSize,
              height: availableSize,
              child: Text(
                "Mission Complete!",
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
                textAlign: TextAlign.center,
              ),
            );
          } else {
            return Container(
              width: availableSize,
              height: availableSize,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3, //枠線のサイズ
                  color: Color.fromARGB(
                      150,
                      changeColorMain.red,
                      changeColorMain.green,
                      changeColorMain.blue), // 枠線の色をメインカラー(不透明度150)で設定
                ),
                borderRadius: BorderRadius.circular(10), //角を30で丸める
                color: Color.fromARGB(
                    200,
                    changeColorSub.red,
                    changeColorSub.green,
                    changeColorSub.blue), // サブカラーを不透明度150で設定
                boxShadow: [
                  BoxShadow(
                    color: shadowColor, // 影の色をChangeColor.dartから取得する
                    offset: Offset(0, 10), // y方向(下方向)に10ずらす
                    blurRadius: 5, // ぼかし具合
                  ),
                ],
              ),
              child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => DayBox(
                      snapshot.data![index],
                      (showday.day ==
                                  int.parse(
                                      snapshot.data![index].datetimeDay) &&
                              showday.month ==
                                  int.parse(
                                      snapshot.data![index].datetimeMonth))
                          ? (snapshot.data![index].datetimeDay !=
                                  snapshot.data![index + 1].datetimeDay)
                              ? availableSize * 0.8
                              : 0
                          : 0,
                      (showday.day ==
                                  int.parse(
                                      snapshot.data![index].datetimeDay) &&
                              showday.month ==
                                  int.parse(
                                      snapshot.data![index].datetimeMonth))
                          ? (snapshot.data![index].datetimeDay !=
                                  snapshot.data![index + 1].datetimeDay)
                              ? availableSize * 0.8
                              : 0
                          : 0,
                      true,
                      true,
                      (showday.day ==
                                  int.parse(
                                      snapshot.data![index].datetimeDay) &&
                              showday.month ==
                                  int.parse(
                                      snapshot.data![index].datetimeMonth))
                          ? false
                          : true,
                      index,
                      snapshot.data!)),
            );
          }
        });
  }
}
