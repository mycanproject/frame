// News データ用の　script
// NewsListViewから参照

import 'package:flutter/services.dart';
import 'dart:async';

class NewsDataRow {
  int newspattern;
  String name;
  int num;
  NewsDataRow(this.newspattern, this.name, this.num);
}

Future<List<NewsDataRow>> getNewsData() async {
  List<NewsDataRow> list = [];

  String csv = await rootBundle.loadString('../frame/assets/newslist.csv');

  for (String line in csv.split('\r\n')) {
    List rows = line.split(',');

    NewsDataRow rowData =
        NewsDataRow(int.parse(rows[0]), rows[1], int.parse(rows[2]));
    list.add(rowData);
  }
  return list;
}
