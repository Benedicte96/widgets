import 'package:flutter/material.dart';

class MyDisPage extends StatefulWidget {
  MyDisPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyDisPageState createState() => _MyDisPageState();
}
class _MyDisPageState extends State<MyDisPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Dismissible(
            key: new Key("vert"), child: Container(
          color: Colors.green,
        ),
        ),
        Dismissible(
          key: new Key("white"), child: Container(
          color: Colors.white,
        ),
        ),
        Dismissible(
          key: new Key("orange"), child: Container(
          color: Colors.orange,
        ),
        )
      ],
    );
  }
}