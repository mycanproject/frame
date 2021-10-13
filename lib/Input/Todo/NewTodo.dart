import 'package:flutter/material.dart';
import 'package:framework/Input/Todo/SelectDate.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';
import 'package:framework/frame/SettingPages/ChangeFont.dart';
import 'SelectColorTag.dart';
import 'SelectReturn.dart';
import 'SelectTodo.dart';
import 'package:framework/main.dart';
import 'InputTodo.dart';

class NewTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height;
    final double availableSizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
            child: Container(
                width: availableSizeWidth,
                height: availableSizeHeight,
                child: Container(
                  width: availableSizeWidth,
                  height: availableSizeHeight * 0.9,
                  color: changeColorMain,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SelectDate(availableSizeWidth, availableSizeHeight),
                      SelectTodo(availableSizeWidth, availableSizeHeight),
                      Container(
                        width: availableSizeWidth * 0.85,
                        height: availableSizeHeight * 0.1,
                        color: Color.fromARGB(150, changeColorSub.red,
                            changeColorSub.green, changeColorSub.blue),
                        child: SelectColorTag(),
                      ),
                      Container(
                          width: availableSizeWidth * 0.75,
                          height: availableSizeHeight * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SelectReturn(
                                  availableSizeWidth, availableSizeHeight),
                              SelectRegister(
                                  availableSizeHeight, availableSizeWidth)
                            ],
                          )),
                    ],
                  ),
                ))));
  }
}

class SelectRegister extends StatelessWidget {
  final double availableSizeHeight;
  final double availableSizeWidth;
  SelectRegister(this.availableSizeHeight, this.availableSizeWidth);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth * 0.35,
      height: availableSizeHeight * 0.075,
      color: Color.fromARGB(
          200, changeColorSub.red, changeColorSub.green, changeColorSub.blue),
      child: TextButton(
          onPressed: () {
            InputTodo().outButton();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mycan()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.add_box, //Icons.add,
                color: changeColorMain,
              ),
              Text(
                "Register",
                style: TextStyle(
                    color: changeColorMain,
                    fontSize: 15,
                    fontFamily: fontMain,
                    fontWeight: FontWeight.w700),
              ),
            ],
          )),
    );
  }
}
