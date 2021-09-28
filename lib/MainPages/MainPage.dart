import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framework/MainPages/Date.dart';
import 'package:framework/MainPages/NewsInMain.dart';
import 'package:framework/MainPages/TimetableInMain.dart';
import 'package:framework/MainPages/TodoInMain.dart';
import '../frame/SettingPages/ChangeColor.dart';
import 'NowDay.dart';

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height * 0.9;
    final double availableSizeWidth =
        MediaQuery.of(context).size.width; //利用可能な画面サイズを取得
    return Expanded(
      //横スクロール画面遷移の設定
      child: PageView.builder(
        controller: PageController(initialPage: 1200), //最大スクロール可能数1200
        itemBuilder: (context, index) {
          return _SliderViewD(
              availableSizeHeight,
              availableSizeWidth,
              day.add(Duration(
                  days: (index - 1200)))); //表示する画面に引数として利用可能な画面サイズと、表示する日付を渡す
        },
        onPageChanged: (index) {
          //ページ変更のときに日付が変わるようにindexを変更する
          setState(() {}); //新しい値でページを再取得する
        },
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  //状態を変更する為の設定
  @override
  MainPageState createState() => MainPageState();
}

class _SliderViewD extends StatelessWidget {
  //Main.dart/MainPageStateから参照
  final double availableSizeHeight;
  final double availableSizeWidth; //利用可能な画面サイズ
  final DateTime showday; //表示する日付

  _SliderViewD(this.availableSizeHeight, this.availableSizeWidth, this.showday);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight, //画面全体を一つの箱として設定
      color: Color.fromARGB(255, changeColorSub.red, changeColorSub.green,
          changeColorSub.blue), //サブカラーを不透明度255で設定
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //列(縦)に並べる
        children: <Widget>[
          Date(availableSizeHeight * 0.2, showday), //表示する日付の設定
          Container(
            width: availableSizeWidth,
            height: availableSizeHeight * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //行(横)に並べる
              children: <Widget>[
                TimetableInMain(
                    availableSizeHeight * 0.7,
                    availableSizeWidth * 0.4,
                    showday.weekday.toString()), //時間割の設定
                Container(
                  width: availableSizeWidth * 0.525,
                  height: availableSizeHeight * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //列(縦)の設定
                    children: <Widget>[
                      NewsInMain(availableSizeHeight * 0.35), //お知らせの設定
                      TodoInMain(availableSizeHeight * 0.35, showday), //ToDoの設定
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
