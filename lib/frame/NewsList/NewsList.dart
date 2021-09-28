// News 画面全体の Widget 用の Script

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import 'NewsListView.dart';
import '../TitleZone.dart';

class NewsList extends StatefulWidget {
  @override
  NewsListState createState() => NewsListState();
}

class NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height * 0.8;
    final double availableSizeWidth =
        MediaQuery.of(context).size.width; //利用可能な画面サイズを取得

    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight,
      color: Color.fromARGB(255, changeColorSub.red, changeColorSub.green,
          changeColorSub.blue), //サブカラーを不透明度255で取得する
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleZone(
              'News', availableSizeHeight * 0.2, availableSizeWidth), //上部のデザイン
          Container(
            width: availableSizeWidth,
            height: availableSizeHeight * 0.7,
            child: NewsListView(availableSizeHeight * 0.7, availableSizeWidth),
          ),
        ],
      ),
    );
  }
}
