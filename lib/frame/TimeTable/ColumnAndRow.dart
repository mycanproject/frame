// TimeTable 時限表示 Widget 用の Script
// WeeklyTable.dartから参照
// availableSize(Height, Width) は縦横のサイズ
// cAndr は表示する数字(1 ~ 5)

import 'package:flutter/cupertino.dart';
import '../SettingPages/ChangeColor.dart';
import '../SettingPages/ChangeFont.dart';

class ColumnAndRow extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  final String cAndr;
  ColumnAndRow(this.availableSizeHeight, this.availableSizeWidth, this.cAndr);
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth * 0.15,
      height: availableSizeHeight * 0.15,
      child: Text(
        cAndr,
        style: TextStyle(
            color: changeColorMain,
            fontFamily: fontMain,
            fontSize: 20,
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
