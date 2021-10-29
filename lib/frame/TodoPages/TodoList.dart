// Todo 画面全体の Widget 用の Script

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../TitleZone.dart';
import 'TodoDate.dart';
import 'DayList.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height * 0.8;
    final double availableSizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: availableSizeWidth,
      height: availableSizeHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          titleZone('ToDo', availableSizeHeight * 0.2, availableSizeWidth),
          todoDate(availableSizeHeight * 0.1, availableSizeWidth),
          DayList(availableSizeHeight * 0.7, availableSizeWidth)
        ],
      ),
    );
  }
}
