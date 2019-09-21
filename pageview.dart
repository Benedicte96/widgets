import 'package:flutter/material.dart';

class MyPageVPage extends StatefulWidget {
  MyPageVPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyPageVPageState createState() => _MyPageVPageState();
}
class _MyPageVPageState extends State<MyPageVPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My PageView Page'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: PageView(
          children: <Widget>[
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.cyan,
            ),
            Container(
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}