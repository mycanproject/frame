import 'package:flutter/material.dart';
import 'package:framework/Input/Todo/InputTodo.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';

class SelectHour extends StatefulWidget {
  final double availableSizeWidth;
  final double availableSizeHeight;

  SelectHour(this.availableSizeWidth, this.availableSizeHeight);
  @override
  _SelectHourState createState() =>
      _SelectHourState(availableSizeWidth, availableSizeHeight);
}

class _SelectHourState extends State<SelectHour> {
  final double availableSizeWidth;
  final double availableSizeHeight;

  List<DropdownMenuItem<int>> _items = [];
  int _selectHour = 0;

  _SelectHourState(this.availableSizeWidth, this.availableSizeHeight);

  @override
  void initState() {
    super.initState();
    setItems();
    _selectHour = _items[0].value!;
  }

  void setItems() {
    for (var i = 1; i < 25; i++) {
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
      value: _selectHour,
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
          setHour(newValue!);
          _selectHour = newValue;
        });
      },
      items: _items,
    );
  }
}
