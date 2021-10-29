// Calender の月ごとの Page Widget 用の Script
// Schedule.dartから参照
// availableSize(Height, Width) は縦横のサイズ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ShowCalender.dart';
import 'ShowMonth.dart';
import '../../MainPages/NowDay.dart';

class CalenderPage extends StatefulWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  CalenderPage(this.availableSizeHeight, this.availableSizeWidth);
  @override
  CalenderPageState createState() =>
      CalenderPageState(availableSizeHeight, availableSizeWidth);
}

class CalenderPageState extends State<CalenderPage> {
  int currentIndex = 1200;
  final double availableSizeHeight;
  final double availableSizeWidth;
  CalenderPageState(this.availableSizeHeight, this.availableSizeWidth);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: PageController(initialPage: 1200),
        itemBuilder: (context, index) {
          return _sliderViewC(
              availableSizeHeight,
              availableSizeWidth,
              DateTime(day.year + ((index - 1200) ~/ 12),
                  day.month + (index - 1200), 1));
        },
        onPageChanged: (index) {
          setState(() {});
        },
      ),
    );
  }
}

Widget _sliderViewC(availableSizeHeight, availableSizeWidth, showmonth) {
  return Container(
    width: availableSizeWidth,
    height: availableSizeHeight,
    child: Column(
      children: [
        showMonth(availableSizeHeight * 0.1, availableSizeWidth, showmonth),
        showCalender(availableSizeHeight * 0.9, availableSizeWidth, showmonth),
      ],
    ),
  );
}
