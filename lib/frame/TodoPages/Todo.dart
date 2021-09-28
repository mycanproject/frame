// Todo Todo1つ1つの Widget 用の Script
// ShowdayListView.dartから参照
// availableSize(Height, Width) は縦横のサイズ
//num は同じ日付内のTodoの数
// data はcsvファイルから取ってきた Todo のデータ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../SettingPages/ChangeColor.dart';
import 'TodoText.dart';
import 'TodoDataRow.dart';
import 'ColorTag.dart';

class Todo extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  final int num;
  final TodoDataRow? data;

  Todo(this.availableSizeHeight, this.availableSizeWidth, this.num, this.data);

  @override
  Widget build(BuildContext context) {
    DateTime showday =
        DateTime(int.parse(data!.datetimeMonth), int.parse(data!.datetimeDay));
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight * 0.2 * 0.8, // 使う画面サイズ
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // 角を10で丸める
        color: Color.fromARGB(100, changeColorSub.red, changeColorSub.green,
            changeColorSub.blue), // サブカラーを不透明度100で設定
        border: Border.all(
          width: 1, // 線の太さ
          color: Color.fromARGB(50, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue), // メインカラーを不透明度50で設定
        ),
      ),
      child: TextButton(
        onPressed: () {}, // 押した時の処理
        child: Row(
          // 行(横)に並べる
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ColorTag(availableSizeHeight, availableSizeWidth * 0.1,
                int.parse(data!.colorselectnum)), // ジャンルごとにカラータグを割り振る
            TodoText(DateFormat("HH : mm").format(showday), 12,
                availableSizeHeight, availableSizeWidth * 0.225), // 期限を出力する
            VerticalDivider(
              color: Color.fromARGB(200, changeColorMain.red,
                  changeColorMain.green, changeColorMain.blue),
              thickness: 2,
              indent: availableSizeHeight * 0.025,
              endIndent: availableSizeHeight * 0.025,
            ), // 区切り線
            TodoText(data!.contents, 10, availableSizeHeight,
                availableSizeWidth * 0.45),
          ],
        ),
      ),
    );
  }
}
