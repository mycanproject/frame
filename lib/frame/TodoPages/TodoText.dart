// Todo Todo内のテキスト Widget 用の Script
// Todo.dartから参照
// showtext は表示する文字
// size はフォントサイズ
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';

class TodoText extends StatelessWidget {
  final String showtext;
  final double size;
  final double availableSizeHeight;
  final double availableSizeWidth;

  TodoText(this.showtext, this.size, this.availableSizeHeight,
      this.availableSizeWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight,
      child: Text(
        showtext,
        style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black,
            fontFamily: fontMain,
            fontSize: size,
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
    );
  }
}
