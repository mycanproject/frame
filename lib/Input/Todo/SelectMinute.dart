import 'package:flutter/material.dart';
import 'package:framework/Input/Todo/InputTodo.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';

class SelectMinute extends StatefulWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectMinute(this.availableSizeWidth, this.availableSizeHeight);
  @override
  _SelectMinuteState createState() =>
      _SelectMinuteState(availableSizeWidth, availableSizeHeight);
}

class _SelectMinuteState extends State<SelectMinute> {
  final double availableSizeWidth;
  final double availableSizeHeight;

  List<DropdownMenuItem<int>> _items = [];
  int _selectMinute = 0;

  _SelectMinuteState(this.availableSizeWidth, this.availableSizeHeight);

  @override
  void initState() {
    super.initState();
    setItems();
    _selectMinute = _items[0].value!;
  }

  void setItems() {
    for (var i = 0; i < 4; i++) {
      _items.add(DropdownMenuItem(
        child: Text(
          (i * 15).toString(),
          style: TextStyle(fontSize: 30),
        ),
        value: i * 15,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      iconEnabledColor: changeColorSub,
      dropdownColor: changeColorSub,
      value: _selectMinute,
      icon: Icon(
        Icons.arrow_drop_down,
        color: changeColorMain,
      ),
      iconSize: 10,
      style: TextStyle(fontSize: 5, color: changeColorMain),
      underline: Container(
        height: 2,
        color: changeColorMain,
      ),
      onChanged: (newValue) {
        setState(() {
          setMinute(newValue!);
          _selectMinute = newValue;
        });
      },
      items: _items,
    );
  }
}
