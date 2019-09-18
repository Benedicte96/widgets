import 'package:flutter/material.dart';

class MySpacePage extends StatefulWidget {
  MySpacePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySpacePageState createState() => _MySpacePageState();
}
class _MySpacePageState extends State<MySpacePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Spacer Page'),
      ),
      body:  Padding(

        padding: const EdgeInsets.all(70.0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('BONJOUR',style: TextStyle(fontSize: 30,color: Colors.purple),),
            Spacer(flex: 3,),
            Text('BONJOUR',style: TextStyle(fontSize: 30,color: Colors.orange),),
            Spacer(
              flex: 4,
            ),
            Text('BONJOUR',style: TextStyle(fontSize: 30,color: Colors.black),),
            Spacer(),
          ],
        ),
      ),
    );
  }
}