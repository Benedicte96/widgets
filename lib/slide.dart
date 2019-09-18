import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MySlidePage extends StatefulWidget {
  MySlidePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySlidePageState createState() => _MySlidePageState();
}

class _MySlidePageState extends State<MySlidePage> with TickerProviderStateMixin{
  List<int> items = [1, 2, 3, 4, 5, 6, 7,];

  Animation animation;
  AnimationController animationController;
  bool isPlaying = false;

  double myVar = 0.0;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
      animationController = new AnimationController(vsync: this, duration: Duration(seconds: 1));
      animation = Tween(begin: 0, end: 1).animate(animationController);
  }

 int currentIndex = 0;
 List<Color> tab = [
   Colors.purple,
   Colors.indigo,
   Colors.blue,
   Colors.green,
   Colors.yellow,
   Colors.orange,
   Colors.red
 ];
 List<Widget> tabu = [
   Container(),
   Column()
 ];


  final _MySlidePage = <BottomNavigationBarItem>[
    BottomNavigationBarItem(title: Text('1'), icon: Icon(Icons.cloud)),
    BottomNavigationBarItem(title: Text('2'),  icon: Icon(Icons.cloud)),
    BottomNavigationBarItem(title: Text('3'),  icon: Icon(Icons.cloud))
  ];

    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Center(
                child: IndexedStack(
                  index: 0,
                  children: <Widget>[
                    Container(
                      color: tab[myVar.toInt()],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Slider(activeColor: tab[myVar.toInt()],
                min: 0, max: 7,value: myVar,onChanged: (double d){
                  setState(() {
                    myVar = d;
                  });
                print(d);
              },),
            )
          ],
        )
      );
  }
}
