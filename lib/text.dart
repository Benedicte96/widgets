import 'package:flutter/material.dart';

class MyRichTextPage extends StatefulWidget {
  MyRichTextPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyRichTextPageState createState() => _MyRichTextPageState();
}
class _MyRichTextPageState extends State<MyRichTextPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My RichText Page'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'BONJOUR  ',style: TextStyle(color: Colors.yellow,fontSize: 40.0)),
                TextSpan(text: 'BIENVENUE  ',style: TextStyle(color: Colors.pinkAccent,fontSize: 40.0)),
                TextSpan(text: 'A NAN  ',style: TextStyle(color: Colors.purple,fontSize: 40.0,),),
              ]
            )),
      ),

    );
  }
}