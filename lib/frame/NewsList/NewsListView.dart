// News のリスト Widget 用の Script
// NewsList.dartから参照
// NewsInMain.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'News.dart';
import 'NewsDataRow.dart';

class NewsListView extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;

  NewsListView(this.availableSizeHeight, this.availableSizeWidth);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        for (String news in newslist) //データベースからとってきたデータが亡くなるまでループ
          News(news, availableSizeHeight,
              availableSizeWidth), //データ1つにつき1つのウィジェット
      ],
    ));
  }
}
