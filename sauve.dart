
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDragPage extends StatefulWidget {
  MyDragPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyDragPageState createState() => _MyDragPageState();
}
class _MyDragPageState extends State<MyDragPage> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Draggle Page'),
          backgroundColor: Colors.grey,
        ),
        body:
        Center(
          child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Draggable(
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.deepOrange,
                    ),
                    feedback: Container(
                      height: 150,
                      width: 150,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Draggable(
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.white,
                    ),
                    feedback:  Container(
                      height: 150,
                      width: 150,
                      color: Colors.white,
                    ),
                  ),
                  Draggable(
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.green,
                    ),
                    feedback:  Container(
                      height: 150,
                      width: 150,
                      color: Colors.green,
                    ),),
                  Draggable(
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.blue,
                    ),
                    feedback:  Container(
                      height: 150,
                      width: 150,
                      color: Colors.blue,
                    ),)

                ],
              ),
              Container(
                color: Colors.lightBlue,
                height: 400,
                width: 400,
              ),



               Expanded(
              flex: 7,
              child: Center(
                child: IndexedStack(
                  index: 0,
                  children: <Widget>[

                  ],
                ),

              )
          )
            ],


          ),
        ),


      bottomNavigationBar:  BottomNavigationBar(
          onTap: (int i){

            print(".......1");
            setState(() {
              myindex = i;
            });
          },
          backgroundColor: Colors.grey,

          items:[
            BottomNavigationBarItem(icon: Icon(Icons.add_to_queue),title: Text('queue'),),
            BottomNavigationBarItem(icon: Icon(Icons.radio_button_checked),title: Text('Radio')),
            BottomNavigationBarItem(icon: Icon(Icons.terrain),title: Text('Nan')),

          ]),

    );
  }
}





















/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meteo',style: TextStyle(color: Colors.white,fontSize: 20),),),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/storm-clouds.jpg'),
                  fit: BoxFit.cover,)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(5.0)),
                Text('Abidjan',style: TextStyle(fontSize: 50.0,color: Colors.white),),
                Text('few clouds',style: TextStyle(fontSize: 30.0,color: Colors.white),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.cloud,color: Colors.white,size: 100.0,),
                    Text('28 °C',style: TextStyle(fontSize: 50.0,color: Colors.white),),
                  ],
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                          Icon(Icons.cloud,color: Colors.white,size: 50.0,),
                          Text('100 °C',style: TextStyle(fontSize: 30.0,color: Colors.white),),
                      ],

                    ),
                    Column (
                      children: <Widget>[
                        Icon(Icons.invert_colors,color: Colors.white,size: 50.0,),
                        Text('45 °C',style: TextStyle(fontSize: 30.0,color: Colors.white),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.ac_unit,color: Colors.white,size: 50.0,),
                        Text('45 °C',style: TextStyle(fontSize: 30.0,color: Colors.white),)
                      ],
                    )

                  ],
                )

              ],
            ),

          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Meteo',
                style: TextStyle(fontSize: 20 ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
              ),
            ),

          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
