import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  MyStack({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyStackState createState() => _MyStackState();
}
class _MyStackState extends State<MyStack>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stack Page'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.deepPurple,),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(height: 700, width: 600,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.yellow) ,),
                  Container(height: 600, width: 500,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.black,),),
                  Container(height: 500,width: 400, decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.orange),),
                  Container(height: 300,width: 200, decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),),
                ],

              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
                height: 40,
              ) )
        ],
      ),


    );
  }

}