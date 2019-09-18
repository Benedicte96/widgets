import 'package:flutter/material.dart';

class MyAspectRPage extends StatefulWidget {
  MyAspectRPage ({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAspectRPageState createState() => _MyAspectRPageState();
}
class _MyAspectRPageState extends State<MyAspectRPage >{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My AspectRatio Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: AspectRatio(
            aspectRatio: 4 / 2,
          child: Container(
            height: 200,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.orange,),
          ),
        ),
      ),

    );
  }
}