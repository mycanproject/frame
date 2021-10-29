// MainPage　メインページ内の　News　用の　widget　の　script
// MainPage から参照
// availeSize は縦横のサイズ

import 'package:flutter/cupertino.dart';
import '../frame/SettingPages/ChangeColor.dart';
import '../frame/NewsList/NewsListView.dart';

Widget newsInMain(availableSize) {
  // MainPage.dart/_SliderViewから参照
  return Container(
    height: availableSize,
    width: availableSize, //画面サイズは縦に合わせる(変更あり)
    decoration: BoxDecoration(
      color: Color.fromARGB(200, changeColorSub.red, changeColorSub.green,
          changeColorSub.blue), //サブカラーを不透明度150で設定
      borderRadius: BorderRadius.circular(10), // 角の丸め具合
      border: Border.all(
        width: 3, //枠線の太さ
        color: Color.fromARGB(150, changeColorMain.red, changeColorMain.green,
            changeColorMain.blue), //メインカラーを不透明度150で設定
      ),
      boxShadow: [
        BoxShadow(
          color: shadowColor,
          offset: Offset(0, 10),
          blurRadius: 5,
        ),
      ],
    ),
    child: newsListView(availableSize, availableSize),
  );
}
