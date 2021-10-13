import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';
import 'SelectYear.dart';
import 'SelctMonth.dart';
import 'SelectDay.dart';
import 'SelectHour.dart';
import 'SelectMinute.dart';

class SelectDate extends StatelessWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectDate(this.availableSizeWidth, this.availableSizeHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: availableSizeWidth * 0.85,
        height: availableSizeHeight * 0.35,
        color: Color.fromARGB(
            250, changeColorSub.red, changeColorSub.green, changeColorSub.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SelectYear(availableSizeWidth * 0.2, availableSizeHeight * 0.05),
            SelectMonth(availableSizeWidth * 0.075, availableSizeHeight * 0.05),
            SelectDay(availableSizeWidth * 0.075, availableSizeHeight * 0.05),
            SelectHour(availableSizeWidth * 0.075, availableSizeHeight * 0.05),
            SelectMinute(availableSizeWidth * 0.075, availableSizeHeight * 0.05)
          ],
        ));
  }
}
