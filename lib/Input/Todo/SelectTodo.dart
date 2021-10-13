import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';

class SelectTodo extends StatelessWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectTodo(this.availableSizeWidth, this.availableSizeHeight);
  var _todo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableSizeWidth * 0.85,
      height: availableSizeHeight * 0.2,
      color: Color.fromARGB(
          100, changeColorSub.red, changeColorSub.green, changeColorSub.blue),
      child: Center(
        child: TextField(
          controller: _todo,
          maxLength: 30,
          decoration: InputDecoration(hintText: "Enter what you need Todo"),
        ),
      ),
    );
  }
}
