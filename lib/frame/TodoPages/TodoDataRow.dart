// Todoデータをデータベースから読み込む用の　class　の　script
//　TodoDate　から参照
// DayList　から参照

import 'package:flutter/services.dart';
import 'dart:async';

class TodoDataRow {
  String datetimeYear;
  String datetimeMonth;
  String datetimeDay;
  String datetimeHour;
  String datetimeMinute;
  String contents;
  String colorselectnum;
  TodoDataRow(
      this.datetimeYear,
      this.datetimeMonth,
      this.datetimeDay,
      this.datetimeHour,
      this.datetimeMinute,
      this.contents,
      this.colorselectnum);
}

Future<List<TodoDataRow>> getTodoDate() async {
  List<TodoDataRow> list = [];

  String csv = await rootBundle.loadString('../frame/assets/todolists.csv');
  print(csv);

  for (String line in csv.split('¥r')) {
    print(line);
    List rows = line.split(',');

    TodoDataRow rowDate = TodoDataRow(
        rows[0], rows[1], rows[2], rows[3], rows[4], rows[5], rows[6]);

    list.add(rowDate);
  }
  print(list.length);
  return list;
}
