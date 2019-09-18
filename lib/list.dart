import 'package:flutter/material.dart';

class MyListPage extends StatefulWidget {
  MyListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyListPageState createState() => _MyListPageState();


}
class _MyListPageState extends State<MyListPage>{
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();


  List<String> _data = [
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
  ];

  static get WordPair => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Animated List'),
        backgroundColor: Colors.blueAccent,
      ),
      persistentFooterButtons: <Widget>[
        RaisedButton(
          child: Text(
            'Add an item',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: () {
            // _addAnItem();
          },
        ),
        RaisedButton(
          child: Text(
            'Remove last',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: () {
            // _removeLastItem();
          },
        ),
        RaisedButton(
          child: Text(
            'Remove all',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: () {
            // _removeAllItems();
          },
        ),
      ],
      body: new Container(),
    );
  }
}
