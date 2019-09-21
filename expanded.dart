import 'package:flutter/material.dart';

class MyExpandPage extends StatefulWidget {
  MyExpandPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyExpandPageState createState() => _MyExpandPageState();
}

class _MyExpandPageState extends State<MyExpandPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expanded Page'),
        centerTitle: true,
      ),

    );
  }
}