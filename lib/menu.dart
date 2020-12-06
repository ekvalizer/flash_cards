import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomMenuWidget extends StatefulWidget {

  BottomMenuWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomMenuWidgetState();
}

class _BottomMenuWidgetState extends State<BottomMenuWidget> {
  int _selectedIndex = 0;
  static const TextStyle menuOptionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _menuOptions = <Widget> [
      Text(
        'Index 0: Home',
        style: menuOptionStyle,
      ),
      Text(
        'Index 1: Learn',
        style: menuOptionStyle,
      ),
      Text(
        'Index 0: Catalog',
        style: menuOptionStyle,
      ),
  ];

  void _onItemSelected(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash cards'),
      ),
      body: Center(
        child: _menuOptions.elementAt(_selectedIndex),
      ),
    );
  }
}