import 'package:flutter/material.dart';



class App extends StatefulWidget {
  App({Key key, this.title}) : super(key: key);
  final String title;
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  Color caughtColor = Colors.grey;
  bool myS = false;

  List<Color> tabcolor = [
    Colors.orange,
    Colors.white,
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.blueAccent
  ];
  List<Color> stateColor = [
  ];
  List<List<double>> tailles = [
    [200.0, 300.0],
    [150.0, 200.0],
    [100.0, 100.0]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myApp"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,

      ),
      backgroundColor: Colors.grey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Expanded(child: Container(
            child: GridView.builder(
              itemCount: tabcolor.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, i){
            return Draggable<Color>(
              data: tabcolor[i],
              child: con(40.0, 20.0, tabcolor[i]), feedback: con(50.0, 50.0, tabcolor[i]), childWhenDragging:con(10.0, 10.0, tabcolor[i]) ,);
          }),
          ),flex: 3,),

           Expanded(child:  Container(
             height: 500,
             width: 500,
             child: DragTarget<Color>(
               builder: (context, List<Color> accepted, rejected){
                 print("-------------------$accepted");

               },
               onWillAccept: (d){
                 if(stateColor.length == 3){
                   return false;
                 }else{
                   return true;
                 }
               },
               onAccept: (data){
                 print(data);
                 setState(() {
                   caughtColor = data;
                   stateColor.add(data);
                 });
                 print(stateColor);
               },
             ),), flex: 4,)
          ],
        ),
      ),
    );
  }

  Widget con(double height, double width, Color color){
    return Container(height: height, width: width, color: color, margin: EdgeInsets.all(5.0),);
  }

  List<Widget> stateRow(){
    List<Widget> tab = [];
    for(var i = 0; i < stateColor.length; i++){
      Container cont =  con(110.0, 50.0, tabcolor[i]);
      tab.add(cont);
    }
    return tab;
  }





}

