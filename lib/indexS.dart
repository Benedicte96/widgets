import 'package:flutter/material.dart';

class MyIndexPage extends StatefulWidget {
  MyIndexPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyIndexPageState createState() => _MyIndexPageState();
}
class _MyIndexPageState extends State<MyIndexPage> {
   var myI = 0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text('My Index Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child:  Container(
              child: Center(
                child: IndexedStack(
                  index: myI,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(color: Colors.pinkAccent, width: 200, height: 200,),
                    Container(color: Colors.greenAccent, width: 200, height: 200),
                    Container(color: Colors.black, width: 200, height: 200)
                  ],
                ),

              )
          ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (data){
          //print("....1");
          setState(() {
            myI = data;
          });

        },
          backgroundColor: Colors.brown,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('home'),backgroundColor: Colors.pinkAccent),
            BottomNavigationBarItem(icon: Icon(Icons.menu),title: Text('menu')),
            BottomNavigationBarItem(icon: Icon(Icons.library_books),title: Text('list')),

          ]
      ),
    );
  }
}