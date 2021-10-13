import 'package:flutter/material.dart';
import 'package:framework/Input/Todo/InputTodo.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';

class SelectMonth extends StatefulWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectMonth(this.availableSizeWidth, this.availableSizeHeight);
  @override
  _SelectMonthState createState() =>
      _SelectMonthState(availableSizeWidth, availableSizeHeight);
}

class _SelectMonthState extends State<SelectMonth> {
  final double availableSizeWidth;
  final double availableSizeHeight;

  List<DropdownMenuItem<int>> _items = [];
  int _selectMonth = 0;

  _SelectMonthState(this.availableSizeWidth, this.availableSizeHeight);

  @override
  void initState() {
    super.initState();
    setItems();
    _selectMonth = _items[0].value!;
  }

  void setItems() {
    for (var i = 1; i < 13; i++) {
      _items.add(DropdownMenuItem(
        child: Text(
          i.toString(),
          style: TextStyle(fontSize: 30),
        ),
        value: i,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      iconEnabledColor: changeColorSub,
      dropdownColor: changeColorSub,
      value: _selectMonth,
      icon: Icon(
        Icons.arrow_drop_down,
        color: changeColorMain,
      ),
      iconSize: 20,
      style: TextStyle(fontSize: 7, color: changeColorMain),
      underline: Container(
        height: 2,
        color: changeColorMain,
      ),
      onChanged: (newValue) {
        setState(() {
          setMonth(newValue!);
          _selectMonth = newValue;
        });
      },
      items: _items,
    );
  }
}
