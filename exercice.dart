import 'package:flutter/material.dart';

class MyExePage extends StatefulWidget {
  MyExePage ({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyExePageState createState() => _MyExePageState();
}

class _MyExePageState extends State<MyExePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Dismissible(
          onDismissed: (direction){
            Navigator.of(context).pop();
          },
            key: new Key("vert"),
            child: Container(
              color: Colors.green,
            )),
        Dismissible(key: new Key("white"),
            child: Container(
              color: Colors.white,
            )),
        Dismissible(key: new Key("orange"),
            child: Container(
              color: Colors.orange,
            ))
      ],

    );
  }
}