import 'package:flutter/material.dart';
import 'package:projet/exercice.dart';
import 'package:projet/interrogation.dart';
import 'package:projet/page.dart';


class MyListPage extends StatefulWidget {
  MyListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyListPageState createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Liste page'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Text'),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return MyTextPage();
            }) );
          }
          ),
          RaisedButton(
            child: Text('dismissible'),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return MyExePage();
            })
            );
          }),
          RaisedButton(
            child: Text('formulaire'),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return MyIntPage();
            })
            );
          })
        ],
      ),

    );
  }
}