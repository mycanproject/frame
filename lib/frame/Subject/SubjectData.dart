import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeFont.dart';
import 'package:framework/frame/Subject/PieData.dart';

String Sub = "国語";
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
                                    text: Sub,
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
                        attendanceButton1(),
                        attendanceButton2(),
                        attendanceButton3(),
                        attendanceButton4(),
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

class attendanceButton1 extends StatefulWidget {
  @override
  _attendanceButtonState1 createState() => _attendanceButtonState1();
}

class _attendanceButtonState1 extends State<attendanceButton1> {
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

class attendanceButton2 extends StatefulWidget {
  @override
  _attendanceButtonState2 createState() => _attendanceButtonState2();
}

class _attendanceButtonState2 extends State<attendanceButton2> {
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

class attendanceButton3 extends StatefulWidget {
  @override
  _attendanceButtonState3 createState() => _attendanceButtonState3();
}

class _attendanceButtonState3 extends State<attendanceButton3> {
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

class attendanceButton4 extends StatefulWidget {
  @override
  _attendanceButtonState4 createState() => _attendanceButtonState4();
}

class _attendanceButtonState4 extends State<attendanceButton4> {
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
