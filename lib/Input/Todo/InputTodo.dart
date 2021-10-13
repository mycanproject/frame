import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:framework/frame/TodoPages/TodoDataRow.dart';
import 'package:path_provider/path_provider.dart';

final _fileName = 'todolists.csv';
final directory = getApplicationDocumentsDirectory();

String _path = _fileName;

int _year = 0;
int _month = 0;
int _day = 0;
int _hour = 0;
int _minute = 0;
String _todo = "";
int _color = 0;

class InputTodo extends StatelessWidget {
  void outButton() async {
    File file = await getTodolistPath();
    String csv = file.readAsStringSync();
    file.writeAsString(
        csv +
            _year.toString() +
            ',' +
            _month.toString() +
            ',' +
            _day.toString() +
            ',' +
            _hour.toString() +
            ',' +
            _minute.toString() +
            ',' +
            _todo +
            ',' +
            _color.toString() +
            ',\n\r',
        encoding: utf8);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Future<File> getTodolistPath() async {
  final directory = await getApplicationDocumentsDirectory();
  if (!File(_path).existsSync()) {
    _path = directory.path + '/' + _fileName;
  }
  File(_path).writeAsString("", encoding: utf8);
  return File(_path);
}

/*
Future<List<TodoDataRow>> load() async {
  List<TodoDataRow> list = [];
  File file = await getTodolistPath();
  String csv = file.readAsStringSync();

  for (String line in csv.split('\r\n')) {
    List rows = line.split(',');

    if (line == "") {
      return list;
    }

    TodoDataRow rowData = TodoDataRow(
        rows[0], rows[1], rows[2], rows[3], rows[4], rows[5], rows[6]);

    list.add(rowData);
  }
  return list;
}
*/
Future<List<TodoDataRow>> load() async {
  List<TodoDataRow> list = [];

  String csv = await rootBundle.loadString('../frame/assets/todolists.csv');

  for (String line in csv.split('\r\n')) {
    List rows = line.split(',');

    TodoDataRow rowData = TodoDataRow(
        rows[0], rows[1], rows[2], rows[3], rows[4], rows[5], rows[6]);

    list.add(rowData);
  }
  return list;
}

void setYear(int year) {
  _year = year;
}

void setMonth(int month) {
  _month = month;
}

void setDay(int day) {
  _day = day;
}

void setHour(int hour) {
  _hour = hour;
}

void setMinute(int minute) {
  _minute = minute;
}

void setTodo(String todo) {
  _todo = todo;
}

void setColor(int color) {
  _color = color;
}
