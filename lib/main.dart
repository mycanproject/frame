import 'package:flutter/material.dart';
import 'package:framework/MainPages/MainPage.dart';
import '../frame/NewsList/NewsList.dart';
import '../frame/SettingPages/ChangeColor.dart';
import '../frame/TodoPages/TodoList.dart';
import '../frame/Timetable/TimeTable.dart';
import '../frame/Schedule/Schedule.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCan',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Mycan(),
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
      body: Center(
        child: selectPage(selecticon),
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
