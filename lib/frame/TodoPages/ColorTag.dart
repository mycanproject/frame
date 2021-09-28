// Todo Todo内のカラータグ Widget 用の Script
// Todo.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// colorselectnum はcsvファイルから取ってきた使うカラータグの色のデータ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ColorList.dart';

class ColorTag extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  final int colorselectnum;
  ColorTag(
      this.availableSizeHeight, this.availableSizeWidth, this.colorselectnum);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight,
      child: VerticalDivider(
        color: colorlist[colorselectnum],
        thickness: availableSizeWidth * 0.15,
      ),
    );
  }
}
