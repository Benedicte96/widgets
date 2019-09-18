import 'package:flutter/material.dart';

class MyReoPage extends StatefulWidget {
  MyReoPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyReoPageState createState() => _MyReoPageState();
}
class _MyReoPageState extends State<MyReoPage>{
  double padValue = 0;

  List<Color> color = <Color>[

    Color(1,'orange', Colors.deepOrange),
    Color(2,'blue', Colors.blue),
    Color(1,'yellow', Colors.yellow),
    Color(1,'green', Colors.green),
    Color(1,'grey', Colors.grey),


  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('My ReodertableList Page'),),
      backgroundColor: Colors.white30,
      body: ReorderableListView(
          children: List.generate(color.length, (index) {
            return ListTile(
              key: ValueKey('value$index'),
              leading: Container(
                height: 150,
                width: 150,
                color: color[index].colortab,
              ),
              title: Text('BD: ' + color[index].bd.toString()),
              subtitle: Text(color[index].title),
            );
          }),
          onReorder: (int oldIndex, int newIndex){
            setState(() {
              _myItems(oldIndex, newIndex);
            });
          }),
    );

  }

  void _myItems(int olIndex, int newIndex){
    if(newIndex > olIndex){
      newIndex -= 1;
    }
    final Color item = color.removeAt(olIndex);
    color.insert(newIndex, item);
  }
}

class Color {
  final int bd;
  final String title;
  final colortab ;

  Color(this.bd, this.title,this.colortab);
}


