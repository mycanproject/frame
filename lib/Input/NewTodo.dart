import 'package:flutter/material.dart';
import 'package:framework/frame/SettingPages/ChangeColor.dart';

class NewTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double availableSizeHeight = MediaQuery.of(context).size.height;
    final double availableSizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: availableSizeWidth * 0.9,
      height: availableSizeHeight * 0.9,
      color: changeColorMain,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: availableSizeWidth * 0.8,
            height: availableSizeHeight * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [SelectYear()],
            ),
          ),
          Container(
            width: availableSizeWidth * 0.8,
            height: availableSizeHeight * 0.2,
          ),
          Container(
            width: availableSizeWidth * 0.8,
            height: availableSizeHeight * 0.2,
          ),
          Container(
            width: availableSizeWidth * 0.8,
            height: availableSizeHeight * 0.2,
          ),
        ],
      ),
    );
  }
}

class SelectYear extends StatefulWidget {
  @override
  _SelectYearState createState() => _SelectYearState();
}

class _SelectYearState extends State<SelectYear> {
  List<DropdownMenuItem<int>> _items = [];
  int _selectYear = 0;

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
          style: TextStyle(fontSize: 40.0),
        ),
        value: i,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          items: _items,
          value: _selectYear,
          onChanged: (value) {
            return setState(() {
              _selectYear = value.hashCode;
            });
          },
        ),
      ),
    );
  }
}
