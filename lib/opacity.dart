import 'package:flutter/material.dart';

class MyOpacityPage extends StatefulWidget {
  MyOpacityPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyOpacityPageState createState() => _MyOpacityPageState();
}
class _MyOpacityPageState extends State<MyOpacityPage>{
  double _opacity1 = 1.0, _opacity = 1.0;

  Widget _coloredSquare(Color color){
     return Container(
       height: 300,
       width: 300,
       color: Colors.grey,
     );

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Opacity Page'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share),onPressed: (){},)
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: _opacity1,
                child: _coloredSquare(Colors.greenAccent),
                duration: const Duration(seconds: 1),
              ),
              RaisedButton(
                elevation: 3,
                color: Colors.pink,
                  onPressed: (){
                setState(() => this._opacity1 = 1.0 - this._opacity1);
              })
            ],
          ),
        ),
      ),
    );
  }
}