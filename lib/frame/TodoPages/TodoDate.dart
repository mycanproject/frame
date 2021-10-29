// Todo 画面の日付一覧 Widget 用の Script
// TodoList.dartから参照
// TodoInMain.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';
import 'DayBox.dart';
import 'TodoDataRow.dart';
import '../../Input/Todo/InputTodo.dart';

Widget todoDate(availableSizeHeight, availableSizeWidth) {
  return FutureBuilder(
      future: load(),
      builder:
          (BuildContext context, AsyncSnapshot<List<TodoDataRow>> snapshot) {
        if (!snapshot.hasData) {
          return Container(
            width: availableSizeWidth,
            height: availableSizeHeight,
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
            width: availableSizeWidth,
            height: availableSizeHeight,
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
            width: availableSizeWidth * 0.9,
            height: availableSizeHeight * 0.9,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return DayBox(
                      snapshot.data![index],
                      (index == 0)
                          ? availableSizeHeight * 0.9
                          : (snapshot.data![index].datetimeMonth ==
                                      snapshot.data![index - 1].datetimeMonth &&
                                  snapshot.data![index].datetimeDay ==
                                      snapshot.data![index - 1].datetimeDay)
                              ? 0
                              : availableSizeHeight * 0.9,
                      (index == 0)
                          ? availableSizeWidth * 0.9
                          : (snapshot.data![index].datetimeMonth ==
                                      snapshot.data![index - 1].datetimeMonth &&
                                  snapshot.data![index].datetimeDay ==
                                      snapshot.data![index - 1].datetimeDay)
                              ? 0
                              : availableSizeWidth * 0.9,
                      false,
                      false,
                      false,
                      index,
                      snapshot.data!);
                }),
          );
        }
      });
}
