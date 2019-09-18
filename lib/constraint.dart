import 'package:flutter/material.dart';

class MyConstPage extends StatefulWidget {
  MyConstPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyConstPageState createState() => _MyConstPageState();
}
class _MyConstPageState extends State<MyConstPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My ConstraintedBox Page'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: ConstrainedBox(constraints: BoxConstraints(
          maxHeight: 300,
        ),
          child:
            RaisedButton(
            color: Colors.purple,
            child: Text('Cliquer Ici'),
              onPressed: (){})
        ),
      ) ,
    );
  }

}