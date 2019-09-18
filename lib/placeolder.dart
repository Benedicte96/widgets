import 'package:flutter/material.dart';

class MyPlacePage extends StatefulWidget {
  MyPlacePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyPlacePageState createState() => _MyPlacePageState();
}
class _MyPlacePageState extends State<MyPlacePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Placeolder Page'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child:  Placeholder(
          fallbackWidth: 10,
          fallbackHeight: 10,
          color: Colors.pink,
          strokeWidth: 30,

        ),
      ),
    );
  }

}