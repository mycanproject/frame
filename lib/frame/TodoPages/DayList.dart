// Todo 画面のTodo一覧 Widget 用の Script
// TodoList.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';
import 'DayBox.dart';
import 'TodoDataRow.dart';
import '../../Input/NewTodo.dart';

class DayList extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  DayList(this.availableSizeHeight, this.availableSizeWidth);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getTodoData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<TodoDataRow>> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              width: availableSizeWidth,
              height: availableSizeHeight,
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
              width: availableSizeWidth,
              height: availableSizeHeight,
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
              width: availableSizeWidth * 0.9,
              height: availableSizeHeight * 0.9,
              child: ListView.builder(
                  itemCount: snapshot.data!.length + 1,
                  itemBuilder: (context, index) {
                    return (index < snapshot.data!.length)
                        ? DayBox(
                            snapshot.data![index],
                            (index < snapshot.data!.length - 1)
                                ? (snapshot.data![index].datetimeDay !=
                                        snapshot.data![index + 1].datetimeDay)
                                    ? availableSizeHeight * 0.9
                                    : 0
                                : availableSizeHeight * 0.9,
                            (index < snapshot.data!.length - 1)
                                ? (snapshot.data![index].datetimeDay !=
                                        snapshot.data![index + 1].datetimeDay)
                                    ? availableSizeWidth * 0.9
                                    : 0
                                : availableSizeWidth * 0.9,
                            true,
                            false,
                            false,
                            (index < snapshot.data!.length - 1)
                                ? index
                                : index - 1,
                            snapshot.data!)
                        : Container(
                            width: availableSizeWidth * 0.9,
                            height: availableSizeHeight * 0.5,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(10), // 角を10で丸める
                                color: changeColorMain, // サブカラーを不透明度100で設定
                                border: Border.all(
                                  width: 5, // 線の太さ
                                  color: changeColorSub, // メインカラーを不透明度50で設定
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: shadowColor,
                                    offset: Offset(0, 3),
                                    blurRadius: 2,
                                  )
                                ]),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NewTodo()));
                              },
                              child: Text(
                                "New Todo",
                                style: TextStyle(
                                    color: changeColorSub,
                                    fontSize: 15,
                                    fontFamily: fontMain,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          );
                  }),
            );
          }
        });
  }
}
