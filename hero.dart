import 'package:flutter/material.dart';

class MyHeroPage extends StatefulWidget {
  MyHeroPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHeroPageState createState() => _MyHeroPageState();
}
class _MyHeroPageState extends State<MyHeroPage>{
  @override
  Widget build(BuildContext context) {
    Hero(
      tag: "DemoTag",
      child: Icon(
        Icons.add,
        size: 150.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("hero page"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: Column() ,
      ),

    );
  }
}