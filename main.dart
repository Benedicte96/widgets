import 'dart:math';
import 'package:flutter/material.dart';
/*import 'expanded.dart';*/
/*import 'interrogation.dart';*/
/*import 'page.dart';*/
/*import 'exercice.dart';*/
import 'list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyListPage  (title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;
  final Duration resetDuration = Duration(seconds: 1);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width = 150.0;
  double _heigth = 150.0;
  Color _color = Colors.redAccent;
  Duration duration;

  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: _width,
                    height: _heigth,
                    decoration: BoxDecoration(
                        borderRadius: _borderRadiusGeometry, color: _color),
                  )
              ),
              RaisedButton(
                  child: Text('NAN'),
                  onPressed: () {
                    setState(() {
                      final random = Random();
                      _width = random.nextInt(300).toDouble();
                      _heigth = random.nextInt(300).toDouble();
                      _color = Color.fromRGBO(
                          random.nextInt(256), random.nextInt(256),
                          random.nextInt(256), 1);
                      _borderRadiusGeometry =
                          BorderRadius.circular(random.nextInt(50).toDouble());
                    });
                  }
              )
            ]
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
