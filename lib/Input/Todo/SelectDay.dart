import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';
import 'InputTodo.dart';

class SelectDay extends StatefulWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectDay(this.availableSizeWidth, this.availableSizeHeight);
  @override
  _SelectDayState createState() =>
      _SelectDayState(availableSizeWidth, availableSizeHeight);
}

class _SelectDayState extends State<SelectDay> {
  final double availableSizeWidth;
  final double availableSizeHeight;

  List<DropdownMenuItem<int>> _items = [];
  int _selectDay = 0;

  _SelectDayState(this.availableSizeWidth, this.availableSizeHeight);

  @override
  void initState() {
    super.initState();
    setItems();
    _selectDay = _items[0].value!;
  }

  void setItems() {
    for (var i = 1; i < 32; i++) {
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
      value: _selectDay,
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
          setDay(newValue!);
          _selectDay = newValue;
        });
      },
      items: _items,
    );
  }
}
