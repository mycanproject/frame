// Calender 画面全体の Widget 用の Script

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../TitleZone.dart';
import 'CalenderPage.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height * 0.8;
    final double availableSizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight,
      child: Column(
        children: [
          titleZone("Schedule", availableSizeHeight * 0.2, availableSizeWidth),
          CalenderPage(availableSizeHeight * 0.8, availableSizeWidth * 0.9),
        ],
      ),
    );
  }
}
