// 時間割データ用の script
// TimetableInMain.dartから参照

import 'package:flutter/services.dart';
import 'dart:async';

class Subject {
  String subject1;
  String subject2;
  String subject3;
  String subject4;
  String subject5;

  Subject(this.subject1, this.subject2, this.subject3, this.subject4,
      this.subject5);
}

Future<List<Subject>> getSubject() async {
  List<Subject> list = [];

  String csv = await rootBundle.loadString('../frame/assets/timetable.csv');

  for (String line in csv.split('\r\n')) {
    List rows = line.split(',');

    Subject rowData = Subject(rows[0], rows[1], rows[2], rows[3], rows[4]);
    list.add(rowData);
  }
  return list;
}
