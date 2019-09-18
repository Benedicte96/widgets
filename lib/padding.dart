import 'package:flutter/material.dart';

class MyPaddingPage extends StatefulWidget {
  MyPaddingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyPaddingPageState createState() => _MyPaddingPageState();
}
class _MyPaddingPageState extends State<MyPaddingPage>{
  double padValue = 25;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Padding Page'),
        backgroundColor: Colors.black87,
      ),
      body:
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Container(
            color: Colors.grey,
          ),
        )
        
    );
  }
}