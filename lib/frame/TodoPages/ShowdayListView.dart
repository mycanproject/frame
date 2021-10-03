// Todo 画面の日にちごとのTodo一覧 Widget 用の Script
// DayBox.dartから参照
//showday は日付
// data はcsvファイルから取ってきた Todo のデータ
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Todo.dart';
import 'TodoDataRow.dart';

class ShowdayTodoListView extends StatelessWidget {
  final DateTime showday;
  final double availableSizeHeight;
  final double availableSizeWidth;
  final TodoDataRow? data;
  final bool onMain;
  final int num;
  final List<TodoDataRow> datas;

  ShowdayTodoListView(this.showday, this.availableSizeHeight,
      this.availableSizeWidth, this.data, this.onMain, this.num, this.datas);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = num;
              datas[(i == 0) ? i : i - 1].datetimeDay == data!.datetimeDay ||
                  i == num;
              i++)
            Container(
              width: availableSizeWidth * 0.9,
              height: availableSizeHeight * 0.2,
              child: Todo(availableSizeHeight, availableSizeWidth, i,
                  datas[(i == 0) ? i : i - 1], onMain),
            )
        ],
      ),
    );
  }
}
