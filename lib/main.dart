import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';
import 'icon.dart';
import 'placeolder.dart';
import 'drag.dart';
import 'slide.dart';
import 'indexS.dart';
import 'flexible.dart';
import 'text.dart';
import 'stack.dart';
import 'padding.dart';
import 'mediquary.dart';
import 'spacer.dart';
import 'aspect.dart';
import 'limited.dart';
import 'constraint.dart';
import 'switch.dart';
import 'opacity.dart';
import 'reordeable.dart';
import 'list.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage  (),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> MyW = [
    MyStack(title: "Stack",),
    MyIconPage(title:"AnimatedIcon",),
    MyPaddingPage(title:"AnimatedPadding",),
    MySwitchPage(title:"AnimatedSwitch"),
    MyOpacityPage(title:"AnimatedOpacity"),
    MyListPage(title:"AnimatedList"),
    MyRichTextPage(title:"RichText",),
    MyFlexiblePage(title:"Flexible"),
    MySlidePage(title: "Slider",),
    App(title: "DragTarget",),
    MyIndexPage(title: "IndexedStack",),
    MyPlacePage(title: "Placeolder",),
    MyMediaPage(title: "Mediaquary"),
    MySpacePage(title:"Spacer"),
    MyAspectRPage(title:"AspectRatio"),
    MyLimitedBPage(title:"LimitedBox"),
    MyConstPage(title:"ConstraintedBox"),
    MyReoPage(title:"ReorderableList")



  ];

  List<String> arrText = [
    "Stack",
    "AnimatedIcon",
    "AnimatedPadding",
    "AnimatedSwitch",
    "AnimatedOpacity",
    "AnimatedList",
    "RichText",
    "Flexible",
    "Slider",
    "DragTarget",
    "IndexedStack",
    "Placeolder",
    "Mediaquary",
    "Spacer",
    "AspectRatio",
    "LimitedBox",
    "ConstraintedBox",
    "ReorderableList"


  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My list of Widgets'),
        backgroundColor: Colors.orange,
      ),
      body: Container(color: Colors.blueGrey,
        child: ListView.builder(
          itemCount: arrText.length,
            itemBuilder: (context, i){
            return RaisedButton(
              onPressed: (){
              NewPage(MyW[i]);
            },

            child: Text(arrText[i]),);

            }),

      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void NewPage(Widget wid){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return wid;

    }));
  }
}
