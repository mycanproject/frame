// Todo 画面のTodo一覧 Widget 用の Script
// TodoList.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';
import 'DayBox.dart';
import 'TodoDataRow.dart';

class DayList extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  DayList(this.availableSizeHeight, this.availableSizeWidth);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getTodoDate(),
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
              width: availableSizeWidth,
              height: availableSizeHeight,
              child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => DayBox(snapshot.data![index],
                      availableSizeHeight, availableSizeWidth * 0.2, true)),
            );
          }
        });
  }
}
