import 'package:flutter/material.dart';

class MyFlexiblePage extends StatefulWidget {
  MyFlexiblePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyFlexiblePageState createState() => _MyFlexiblePageState();
}
class _MyFlexiblePageState extends State<MyFlexiblePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text('My Flexible Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Spacer(flex: 1,),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Spacer(flex: 1,),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Spacer(flex: 1,),
          Flexible(
            flex: 2,
              child: Container(
            color: Colors.pinkAccent,
          ),
          ),
          Spacer(flex: 1,),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}