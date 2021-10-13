import 'package:framework/frame/SettingPages/ChangeFont.dart';
import 'package:framework/main.dart';
import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';

class SelectReturn extends StatelessWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectReturn(this.availableSizeWidth, this.availableSizeHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth * 0.35,
      height: availableSizeHeight * 0.075,
      color: Color.fromARGB(
          200, changeColorSub.red, changeColorSub.green, changeColorSub.blue),
      child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mycan()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.backspace, //Icons.arrow_back
                color: changeColorMain,
              ),
              Text(
                "Return",
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
