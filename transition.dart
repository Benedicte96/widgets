import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class MyFadPage extends StatefulWidget {
  MyFadPage({Key key, this.title}) : super(key: key);
  final String title;
  _MyFadPageState createState() => _MyFadPageState();
}

class _MyFadPageState extends State<MyFadPage> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;
  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeTransition'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: FadeTransition(
              opacity: animation,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      height: 300,
                      width: 300,
                      color: Colors.pink,
                    ),
                  ]
              )
          )
      ),
    );
  }
}