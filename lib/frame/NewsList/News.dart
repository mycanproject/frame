// 個々の News Widget 用の Script
// NewsListView.dartから参照
// news は出力するデータ
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';

class News extends StatelessWidget {
  final String news;
  final double availableSizeHeight;
  final double availableSizeWidth;

  News(this.news, this.availableSizeHeight, this.availableSizeWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight * 0.2, //使う箱のサイズ
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), // 角を10で丸める
          color: Color.fromARGB(100, changeColorSub.red, changeColorSub.green,
              changeColorSub.blue), // サブカラーを不透明度100で設定
          border: Border.all(
            width: 1, // 線の太さ
            color: Color.fromARGB(
                50,
                changeColorMain.red,
                changeColorMain.green,
                changeColorMain.blue), // メインカラーを不透明度50で設定
          )),
      child: TextButton(
        onPressed: () {}, // ボタンを押したときの処理
        child: Text(
          news, // 出力するデータ
          style: TextStyle(
              color: Colors.black,
              fontFamily: fontMain,
              fontSize: 10,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                  color: shadowColor,
                  offset: Offset(0, 3),
                  blurRadius: 2,
                )
              ]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
