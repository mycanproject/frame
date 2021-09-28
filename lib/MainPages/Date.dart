// 日付用の　script
// MainPage から参照
// deviceHeight は縦のサイズ
// showday は日付

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../frame/SettingPages/ChangeColor.dart';
import '../frame/SettingPages/ChangeFont.dart';

class Date extends StatelessWidget {
  final double deviceHeight;
  final DateTime showday;
  Date(this.deviceHeight, this.showday); //利用可能な画面の幅のサイズを取得

  @override
  Widget build(BuildContext context) {
    final int date = showday.day;

    return Container(
      height: deviceHeight, //画面の約3分の1利用
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30), //角を30ぶん丸くする
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor, //影の色をChangeColor.dartから取得
            offset: Offset(0, 20), //y方向(下方向)に20ズレた位置に影を配置
            blurRadius: 10, //ぼかし具合は10
          ),
        ],
        color: Color.fromARGB(255, changeColorMain.red, changeColorMain.green,
            changeColorMain.blue), //メインカラーを不透明度255で利用
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //列(縦)
        children: [
          Text(
            date.toString(), //今日の日付を表示
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: fontMain, //フォントをChangeFont.dartから取得
                fontSize: 75,
                color: Color.fromARGB(
                    255,
                    changeColorSub.red,
                    changeColorSub.green,
                    changeColorSub.blue), //メインカラーを不透明度255で設定
                fontWeight: FontWeight.w700,
                shadows: [
                  //影の設定
                  Shadow(
                    color: shadowColor, //影の色をChangeColor.dartから取得
                    offset: Offset(0, 5), //y方向(下方向)に5影をずらす
                    blurRadius: 3, //10ぼかす
                  )
                ]),
            textAlign: TextAlign.center, //文字を中央に
          ),
        ],
      ),
    );
  }
}
