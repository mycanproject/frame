import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeFont.dart';
import 'package:framework/frame/Subject/PieData.dart';

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
      //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
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
                                  color: Colors.black,
                                  //decoration: TextDecoration.underline,
                                ),
                                children: [
                                  TextSpan(
                                      text: '教科名 ',
                                      style: TextStyle(
                                          fontSize:
                                              availableSizeHeight * 0.03)),
                                  TextSpan(
                                    text: '国語',
                                    style: TextStyle(
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 1.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          )
                                        ],
                                        fontFamily: fontMain,
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
                                          fontSize:
                                              availableSizeHeight * 0.03)),
                                  TextSpan(
                                      text: '2',
                                      style: TextStyle(
                                          shadows: <Shadow>[
                                            Shadow(
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 1.0,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            )
                                          ],
                                          fontFamily: fontMain,
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.blue,
                              child: Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: availableSizeHeight * 0.03),
                              ),
                            ),
                            Text(
                              '出席',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: availableSizeHeight * 0.02),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.blue,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: availableSizeHeight * 0.03),
                              ),
                            ),
                            Text(
                              '欠席',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: availableSizeHeight * 0.02),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.blue,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: availableSizeHeight * 0.03),
                              ),
                            ),
                            Text(
                              '遅刻・早退',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: availableSizeHeight * 0.02),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.blue,
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: availableSizeHeight * 0.03),
                              ),
                            ),
                            Text(
                              '休講',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: availableSizeHeight * 0.02),
                            ),
                          ],
                        )
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
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                                  child: Text('Attendance Rate'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: availableSizeWidth * 0.9,
                                  height: availableSizeHeight * 0.07,
                                  child: Text(
                                    '８／１２',
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
                            child: PieData(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                                  child: Text('Attendance Rate'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: availableSizeWidth * 0.9,
                                  height: availableSizeHeight * 0.07,
                                  child: Text(
                                    '８／１２',
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
                            child: PieData(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
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
                                  child: Text('Attendance Rate'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: availableSizeWidth * 0.9,
                                  height: availableSizeHeight * 0.07,
                                  child: Text(
                                    '８／１２',
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
                            child: PieData(),
                          )
                        ],
                      ),
                    ),
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
