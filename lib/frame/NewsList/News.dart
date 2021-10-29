// 個々の News Widget 用の Script
// NewsListView.dartから参照
// news は出力するデータ
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framework/frame/NewsList/NewsDataRow.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';
import '../../MainPages/NowDay.dart';

Widget news(news, availableSizeHeight, availableSizeWidth) {
  return Container(
    width: availableSizeWidth,
    height: availableSizeHeight * 0.2, //使う箱のサイズ
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // 角を10で丸める
        color: Color.fromARGB(100, changeColorSub.red, changeColorSub.green,
            changeColorSub.blue), // サブカラーを不透明度100で設定
        border: Border.all(
          width: 1, // 線の太さ
          color: Color.fromARGB(50, changeColorMain.red, changeColorMain.green,
              changeColorMain.blue), // メインカラーを不透明度50で設定
        )),
    child: newsPattern(news),
  );
}

Widget newsPattern(NewsDataRow news) {
  switch (news.newspattern) {
    case 1:
      return TextButton(
          onPressed: () {}, // ボタンを押したときの処理
          child: (news.num >= 0)
              ? Text.rich(
                  TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: fontMain,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: shadowColor,
                            offset: Offset(0, 3),
                            blurRadius: 2,
                          )
                        ]),
                    children: [
                      TextSpan(
                        text: news.name,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: '\nが残り',
                      ),
                      TextSpan(
                        text: news.num.toString(),
                        style: TextStyle(
                          color: (news.num <= 2) ? Colors.red : Colors.yellow,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: '回の欠席で\n未履修となります',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              : Text(
                  news.name + "\nが未履修になりました",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontFamily: fontMain,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          color: shadowColor,
                          offset: Offset(0, 3),
                          blurRadius: 2,
                        )
                      ]),
                ));
    case 2:
      return TextButton(
          onPressed: () {}, // ボタンを押したときの処理
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: fontMain,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: shadowColor,
                      offset: Offset(0, 3),
                      blurRadius: 2,
                    )
                  ]),
              children: [
                TextSpan(
                  text: news.name,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: 'まで\n残り',
                ),
                TextSpan(
                  text: (DateTime(news.num ~/ 10000, (news.num ~/ 100) % 100,
                                  news.num % 100)
                              .difference(day)
                              .inDays >=
                          1)
                      ? DateTime(news.num ~/ 10000, (news.num ~/ 100) % 100,
                                  news.num % 100)
                              .difference(day)
                              .inDays
                              .toString() +
                          "日"
                      : "期限切れ",
                  style: TextStyle(
                    color: (news.num <= 7) ? Colors.red : Colors.blue,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'です',
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ));
    case 3:
      return TextButton(
          onPressed: () {}, // ボタンを押したときの処理
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: fontMain,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: shadowColor,
                      offset: Offset(0, 3),
                      blurRadius: 2,
                    )
                  ]),
              children: [
                TextSpan(
                  text: news.name,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: 'の課題提出まで\n残り',
                ),
                TextSpan(
                  text: (DateTime(news.num ~/ 10000, (news.num ~/ 100) % 100,
                                  news.num % 100)
                              .difference(day)
                              .inDays >=
                          1)
                      ? DateTime(news.num ~/ 10000, (news.num ~/ 100) % 100,
                                  news.num % 100)
                              .difference(day)
                              .inDays
                              .toString() +
                          "日"
                      : "期限切れ",
                  style: TextStyle(
                    color: (news.num <= 7) ? Colors.red : Colors.blue,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'です',
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ));
    default:
      return TextButton(
          onPressed: () {}, // ボタンを押したときの処理
          child: (news.num >= 0)
              ? Text.rich(
                  TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: fontMain,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: shadowColor,
                            offset: Offset(0, 3),
                            blurRadius: 2,
                          )
                        ]),
                    children: [
                      TextSpan(
                        text: news.name,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: '\nが残り',
                      ),
                      TextSpan(
                        text: news.num.toString(),
                        style: TextStyle(
                          color: (news.num <= 2) ? Colors.red : Colors.yellow,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: '回の欠席で\n未履修となります',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              : Text(
                  news.name + "\nが未履修になりました",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontFamily: fontMain,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          color: shadowColor,
                          offset: Offset(0, 3),
                          blurRadius: 2,
                        )
                      ]),
                ));
  }
}
