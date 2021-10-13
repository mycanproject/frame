import 'package:flutter/material.dart';
import 'package:framework/Input/Todo/InputTodo.dart';

class SelectColorTag extends StatefulWidget {
  @override
  _SelectColorTagState createState() => _SelectColorTagState();
}

class _SelectColorTagState extends State<SelectColorTag> {
  Color _payment = Colors.black;

  void _handleRadioButton(Color payment) => setState(() {
        _payment = payment;
      });

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // 枠線
        border: Border.all(color: _payment, width: 2),
      ),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              'Prease select Color Tag',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Radio<Color>(
              activeColor: Colors.blue,
              value: Colors.blue,
              groupValue: _payment,
              onChanged: (value) {
                setColor(0);
                _handleRadioButton(value!);
              },
            ),
            Radio<Color>(
              activeColor: Colors.red,
              value: Colors.red,
              groupValue: _payment,
              onChanged: (value) {
                setColor(1);
                _handleRadioButton(value!);
              },
            ),
            Radio<Color>(
              activeColor: Colors.yellow,
              value: Colors.yellow,
              groupValue: _payment,
              onChanged: (value) {
                setColor(2);
                _handleRadioButton(value!);
              },
            ),
            Radio<Color>(
              activeColor: Colors.green,
              value: Colors.green,
              groupValue: _payment,
              onChanged: (value) {
                setColor(3);
                _handleRadioButton(value!);
              },
            ),
          ]),
        ],
      ),
    );
  }
}
