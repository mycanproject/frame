// News のリスト Widget 用の Script
// NewsList.dartから参照
// NewsInMain.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';
import 'News.dart';
import 'NewsDataRow.dart';

class NewsListView extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;

  NewsListView(this.availableSizeHeight, this.availableSizeWidth);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getNewsData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<NewsDataRow>> snapshot) {
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
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => News(snapshot.data![index],
                      availableSizeHeight, availableSizeWidth)),
            );
          }
        });
  }
  /*Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        for (NewsDataRow news in getNewsData()) //データベースからとってきたデータが亡くなるまでループ
          News(news, availableSizeHeight,
              availableSizeWidth), //データ1つにつき1つのウィジェット
      ],
    ));
  }
}*/
}
