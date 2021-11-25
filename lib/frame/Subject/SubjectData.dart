import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeFont.dart';
import 'package:framework/frame/Subject/PieData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: non_constant_identifier_names
String Sub = "国語";
int tani = 2;

class SubjectData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            height: 6.h,
          ),
          Container(
              height: 9.h,
              child: Container(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                        style:
                            TextStyle(color: Colors.black, fontFamily: fontMain
                                //decoration: TextDecoration.underline,
                                ),
                        children: [
                          TextSpan(
                            text: '教科名 ',
                            style: TextStyle(fontSize: 7.sp),
                          ),
                          TextSpan(
                            text: Sub,
                            style: TextStyle(shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 1.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              )
                            ], fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ))),
          Container(
              height: 9.h,
              child: Container(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          //decoration: TextDecoration.underline,
                        ),
                        children: [
                          TextSpan(
                              text: '単位数 ',
                              style: TextStyle(
                                  fontFamily: fontMain, fontSize: 7.sp)),
                          TextSpan(
                              text: tani.toString(),
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    )
                                  ],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.red)),
                        ]),
                  ))),
          Container(
            height: 17.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                attendanceButton1(),
                attendanceButton2(),
                attendanceButton3(),
                attendanceButton4(),
              ],
            ),
          ),
          Container(
            height: 45.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    height: 40.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        rate(1, 12, "Attendance Rate"),
                        rate(5, 12, "Attendance Rate"),
                        rate(8, 12, "Attendance Rate"),
                      ],
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

// ignore: camel_case_types
class attendanceButton1 extends StatefulWidget {
  @override
  _attendanceButtonState1 createState() => _attendanceButtonState1();
}

// ignore: camel_case_types
class _attendanceButtonState1 extends State<attendanceButton1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(color: Colors.white, fontSize: 5.sp),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '出席',
          style: TextStyle(color: Colors.black, fontSize: 4.sp),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class attendanceButton2 extends StatefulWidget {
  @override
  _attendanceButtonState2 createState() => _attendanceButtonState2();
}

// ignore: camel_case_types
class _attendanceButtonState2 extends State<attendanceButton2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(color: Colors.white, fontSize: 5.sp),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '遅刻・早退',
          style: TextStyle(color: Colors.black, fontSize: 4.sp),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class attendanceButton3 extends StatefulWidget {
  @override
  _attendanceButtonState3 createState() => _attendanceButtonState3();
}

// ignore: camel_case_types
class _attendanceButtonState3 extends State<attendanceButton3> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(color: Colors.white, fontSize: 5.sp),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '欠課',
          style: TextStyle(color: Colors.black, fontSize: 4.sp),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class attendanceButton4 extends StatefulWidget {
  @override
  _attendanceButtonState4 createState() => _attendanceButtonState4();
}

// ignore: camel_case_types
class _attendanceButtonState4 extends State<attendanceButton4> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(color: Colors.white, fontSize: 5.sp),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '休講',
          style: TextStyle(color: Colors.black, fontSize: 4.sp),
        ),
      ],
    );
  }
}

Widget rate(data, maxdata, name) {
  return Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    width: 95.w,
    height: 10.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 56.w,
          height: 9.h,
          child: Column(
            children: [
              Container(
                width: 30.w,
                height: 2.h,
                child: Text(name),
              ),
              Container(
                alignment: Alignment.center,
                width: 30.w,
                height: 7.h,
                child: Text(
                  data.toString() + '／' + maxdata.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 7.sp),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(4),
          width: 10.w,
          height: 10.h,
          child: PieData(data / maxdata * 100),
        )
      ],
    ),
  );
}
