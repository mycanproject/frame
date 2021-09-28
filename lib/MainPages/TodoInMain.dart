// MainPage　メインページ内の　Todo　用の　widget　の　script
// MainPage から参照
// availeSize は縦横のサイズ
// showday は日付

import 'package:flutter/cupertino.dart';
import '../frame/TodoPages/TodoDate.dart';
import '../frame/SettingPages/ChangeColor.dart';

class TodoInMain extends StatelessWidget {
  // MainPage.dart/_SliderViewから参照
  final double availableSize;
  final DateTime showday;

  TodoInMain(this.availableSize, this.showday); //利用可能な画面サイズと表示する日付を取得する

  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSize,
      height: availableSize, //箱のサイズを指定
      decoration: BoxDecoration(
        border: Border.all(
          width: 3, //枠線のサイズ
          color: Color.fromARGB(150, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue), // 枠線の色をメインカラー(不透明度150)で設定
        ),
        borderRadius: BorderRadius.circular(10), //角を30で丸める
        color: Color.fromARGB(200, changeColorSub.red, changeColorSub.green,
            changeColorSub.blue), // サブカラーを不透明度150で設定
        boxShadow: [
          BoxShadow(
            color: shadowColor, // 影の色をChangeColor.dartから取得する
            offset: Offset(0, 10), // y方向(下方向)に10ずらす
            blurRadius: 5, // ぼかし具合
          ),
        ],
      ),
      child: TodoDate(availableSize, availableSize),
    );
  }
}
