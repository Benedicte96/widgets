import 'dart:math';

import 'package:flutter/material.dart';

class MyContPage extends StatefulWidget {
  MyContPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyContPageState createState() => _MyContPageState();
}

class _MyContPageState extends State<MyContPage > {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.touch_app),
          // When the user taps the button
          onPressed: () {
            setState(() {
              // Create a random number generator.
              final random = Random();

              // Generate a random width and height.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Generate a random color.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),
      );


  }
}