import 'package:flutter/material.dart';
import 'package:framework/Input/Todo/InputTodo.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';

class SelectYear extends StatefulWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectYear(this.availableSizeWidth, this.availableSizeHeight);
  @override
  _SelectYearState createState() =>
      _SelectYearState(availableSizeWidth, availableSizeHeight);
}

class _SelectYearState extends State<SelectYear> {
  final double availableSizeWidth;
  final double availableSizeHeight;

  List<DropdownMenuItem<int>> _items = [];
  int _selectYear = 0;

  _SelectYearState(this.availableSizeWidth, this.availableSizeHeight);

  @override
  void initState() {
    super.initState();
    setItems();
    _selectYear = _items[0].value!;
  }

  void setItems() {
    for (var i = 0; i < 2; i++) {
      _items.add(DropdownMenuItem(
        child: Text(
          (i + 2020).toString(),
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
      value: _selectYear,
      icon: Icon(
        Icons.arrow_drop_down,
        color: changeColorMain,
      ),
      iconSize: 30,
      style: TextStyle(fontSize: 10, color: changeColorMain),
      underline: Container(
        height: 2,
        color: changeColorMain,
      ),
      onChanged: (newValue) {
        setState(() {
          setYear(newValue!);
          _selectYear = newValue;
        });
      },
      items: _items,
    );
  }
}
