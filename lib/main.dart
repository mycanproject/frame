import 'package:flutter/material.dart';
import 'package:framework/MainPages/MainPage.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';
import 'package:framework/frame/Subject/SubjectData.dart';
import '../frame/NewsList/NewsList.dart';
import '../frame/SettingPages/ChangeColor.dart';
import '../frame/TodoPages/TodoList.dart';
import '../frame/Timetable/TimeTable.dart';
import '../frame/Schedule/Schedule.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(100, 100),
      builder: () => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: SubjectData(),
      )
    );
  }
}

class Mycan extends StatefulWidget {
  State<Mycan> createState() => MycanState();
}

class MycanState extends State<Mycan> {
  int selecticon = 2;
  void selectTap(int index) {
    setState(() {
      selecticon = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: selectPage(selecticon),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "ToDo"),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.window), label: "TimeTable"),
        ],
        currentIndex: selecticon,
        selectedItemColor: changeColorMain,
        onTap: selectTap,
      ),
    );
  }
}

Widget selectPage(int selectpage) {
  switch (selectpage) {
    case 0:
      return TodoList();
    case 1:
      return NewsList();
    case 2:
      return MainPage();
    case 3:
      return Schedule();
    case 4:
      return TimeTable();
    default:
      return MainPage();
  }
}
