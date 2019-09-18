import 'package:flutter/material.dart';

class MySwitchPage extends StatefulWidget {
  MySwitchPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySwitchPageState createState() => _MySwitchPageState();
}
class _MySwitchPageState extends State<MySwitchPage>{

  bool switchOn = false;

  void _onSwitchChanged(bool value) {
    switchOn = false;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Switch Page'),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: Center(
        child:  Transform.scale(
          scale: 2.0,
          child: Switch(
            onChanged: _onSwitchChanged,
            value: switchOn,
          ),
        ),
      ),

    );
  }
}