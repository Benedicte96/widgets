import 'package:flutter/material.dart';

  class MyAppPage extends StatefulWidget {
    MyAppPage({Key key, this.title}) : super(key: key);
  final String title;
    @override
  _MyAppPageState createState() => _MyAppPageState();
  }
  class _MyAppPageState extends State<MyAppPage>{
    @override
    Widget build(BuildContext context) {
      return
        Scaffold(
          appBar: AppBar(title: Text('Tooltip',)),
          body: Center(
            child: Container(
              child: Tooltip(
                  message: 'FlutterLogo',
                  child: FlutterLogo(size: 100,)),
            ),
          ),
        );
    }
  }

