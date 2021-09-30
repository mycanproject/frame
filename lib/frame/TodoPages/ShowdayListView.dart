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

  ShowdayTodoListView(this.showday, this.availableSizeHeight,
      this.availableSizeWidth, this.data, this.onMain);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              width: availableSizeWidth * 0.8,
              height: availableSizeHeight * 0.2,
              child: Todo(
                  availableSizeHeight, availableSizeWidth, i, data, onMain),
            )
        ],
      ),
    );
  }
}
