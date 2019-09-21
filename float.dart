import 'package:flutter/material.dart';
import 'package:teste/drag.dart';

class MyFloatPage extends StatefulWidget {
  MyFloatPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyFloatPageState createState() => _MyFloatPageState();
}
class _MyFloatPageState extends State<MyFloatPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('floatingActionButton'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.file_download),
      ),
    );
  }
}