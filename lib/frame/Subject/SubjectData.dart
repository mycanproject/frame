import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeFont.dart';
import 'package:framework/frame/Subject/PieData.dart';

String sub = "国語";
int tani = 2;

class SubjectData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: const Color(0xffc3eff1),
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_outlined,
          size: 40,
        ),
        onPressed: () {
          Navigator.pop(
            context,
          );
        },
      ),
    );
    final double availableSizeHeight =
        MediaQuery.of(context).size.height - appBar.preferredSize.height;
    final double availableSizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: availableSizeWidth,
        height: availableSizeHeight,
        color: Color(
            0xffc3eff1) /*Color.fromARGB(
            255, changeColorSub.red, changeColorSub.green, changeColorSub.blue)*/
        ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: availableSizeWidth,
              height: availableSizeHeight * 0.45,
              child: Column(
                children: <Widget>[
                  Container(
                      width: availableSizeWidth,
                      height: availableSizeHeight * 0.13,
                      child: Container(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontFamily: fontMain
                                    //decoration: TextDecoration.underline,
                                    ),
                                children: [
                                  TextSpan(
                                      text: '教科名 ',
                                      style: TextStyle(
                                          fontSize:
                                              availableSizeHeight * 0.03)),
                                  TextSpan(
                                    text: sub,
                                    style: TextStyle(
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 1.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          )
                                        ],
                                        fontSize: availableSizeHeight * 0.1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ))),
                  Container(
                      width: availableSizeWidth,
                      height: availableSizeHeight * 0.13,
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
                                          fontFamily: fontMain,
                                          fontSize:
                                              availableSizeHeight * 0.03)),
                                  TextSpan(
                                      text: tani.toString(),
                                      style: TextStyle(
                                          shadows: <Shadow>[
                                            Shadow(
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 1.0,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            )
                                          ],
                                          fontWeight: FontWeight.bold,
                                          fontSize: availableSizeHeight * 0.1,
                                          color: Colors.red)),
                                ]),
                          ))),
                  Container(
                    width: availableSizeWidth,
                    height: availableSizeHeight * 0.19,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        AttendanceButton1(),
                        AttendanceButton2(),
                        AttendanceButton3(),
                        AttendanceButton4(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: availableSizeWidth,
                height: availableSizeHeight * 0.4500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    rate(1, 12, "Attendance Rate", availableSizeWidth,
                        availableSizeHeight),
                    rate(5, 12, "Attendance Rate", availableSizeWidth,
                        availableSizeHeight),
                    rate(8, 12, "Attendance Rate", availableSizeWidth,
                        availableSizeHeight),
                  ],
                )),
            Container(
              width: availableSizeWidth,
              height: availableSizeHeight * 0.0403,
            )
          ],
        ),
      ),
    );
  }
}

class AttendanceButton1 extends StatefulWidget {
  @override
  _AttendanceButtonState1 createState() => _AttendanceButtonState1();
}

class _AttendanceButtonState1 extends State<AttendanceButton1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(
                color: Colors.white, fontSize: availableSizeHeight * 0.03),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '出席',
          style: TextStyle(
              color: Colors.black, fontSize: availableSizeHeight * 0.02),
        ),
      ],
    );
  }
}

class AttendanceButton2 extends StatefulWidget {
  @override
  _AttendanceButtonState2 createState() => _AttendanceButtonState2();
}

class _AttendanceButtonState2 extends State<AttendanceButton2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(
                color: Colors.white, fontSize: availableSizeHeight * 0.03),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '遅刻・早退',
          style: TextStyle(
              color: Colors.black, fontSize: availableSizeHeight * 0.02),
        ),
      ],
    );
  }
}

class AttendanceButton3 extends StatefulWidget {
  @override
  _AttendanceButtonState3 createState() => _AttendanceButtonState3();
}

class _AttendanceButtonState3 extends State<AttendanceButton3> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(
                color: Colors.white, fontSize: availableSizeHeight * 0.03),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '欠課',
          style: TextStyle(
              color: Colors.black, fontSize: availableSizeHeight * 0.02),
        ),
      ],
    );
  }
}

class AttendanceButton4 extends StatefulWidget {
  @override
  _AttendanceButtonState4 createState() => _AttendanceButtonState4();
}

class _AttendanceButtonState4 extends State<AttendanceButton4> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 15) _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text(
            "$_counter",
            style: TextStyle(
                color: Colors.white, fontSize: availableSizeHeight * 0.03),
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '休講',
          style: TextStyle(
              color: Colors.black, fontSize: availableSizeHeight * 0.02),
        ),
      ],
    );
  }
}

Widget rate(data, maxdata, name, availableSizeWidth, availableSizeHeight) {
  return Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    width: availableSizeWidth * 0.9,
    height: availableSizeHeight * 0.12,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: availableSizeWidth * 0.6,
          height: availableSizeHeight * 0.10,
          child: Column(
            children: [
              Container(
                width: availableSizeWidth * 0.5,
                height: availableSizeHeight * 0.03,
                child: Text(name),
              ),
              Container(
                alignment: Alignment.center,
                width: availableSizeWidth * 0.9,
                height: availableSizeHeight * 0.07,
                child: Text(
                  data.toString() + '／' + maxdata.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: availableSizeHeight * 0.05),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(4),
          width: availableSizeWidth * 0.23,
          height: availableSizeHeight * 0.11,
          child: PieData(data / maxdata * 100),
        )
      ],
    ),
  );
}
