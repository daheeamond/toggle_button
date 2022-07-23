import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToggleButton',
      home: ToggleButtonsExample(),
    );
  }
}

class ToggleButtonsExample extends StatefulWidget {
  @override
  ToggleButtonsExampleState createState() => new ToggleButtonsExampleState();
}

class ToggleButtonsExampleState extends State<ToggleButtonsExample> {
  List<bool> _isSelected = [false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButton'),
      ),
      body: Center(
        child:  ToggleButtons(
          children: <Widget>[
            Icon(Icons.bluetooth),
            Icon(Icons.wifi),
            Icon(Icons.flash_on),
          ],
          isSelected: _isSelected,
          onPressed: (int index) {
            setState(() {
              _isSelected[index] = !_isSelected[index];
            });
          },
          // region example 1
          color: Colors.grey,
          selectedColor: Colors.red,
          fillColor: Colors.lightBlueAccent,
          // endregion
          // region example 2
          borderColor: Colors.lightBlueAccent,
          selectedBorderColor: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // endregion
        ),
      ),
    );
  }
}