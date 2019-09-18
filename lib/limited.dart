import 'package:flutter/material.dart';

class MyLimitedBPage extends StatefulWidget {
  MyLimitedBPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyLimitedBPageState createState() => _MyLimitedBPageState();
}
class _MyLimitedBPageState extends State<MyLimitedBPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My LimitedBox Page'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        height: 400,
        width: 400,
        child: LimitedBox(
          maxHeight: 150,
          maxWidth: 150,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}