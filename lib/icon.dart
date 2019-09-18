import 'package:flutter/material.dart';

class MyIconPage extends StatefulWidget {
  MyIconPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyIconPageState createState() => _MyIconPageState();
}
class _MyIconPageState extends State<MyIconPage> with SingleTickerProviderStateMixin{

  Animation animation;
  AnimationController animationController;
  bool mReverse = false;

  @override

  void initState(){

    super.initState();
    animationController = new AnimationController(vsync: this, duration:  Duration(seconds: 1));
    animation = Tween<double>(begin: 0, end: 1).animate(animationController);

}

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text('My AnimatedIcon'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: InkWell(
            onTap: (){
              if (mReverse == false)
                animationController.forward();
              else
                animationController.reverse();
              mReverse = !mReverse;
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_home,
              size: 200,
              progress: animation,
              color: Colors.black,

            ),

          )
      ),
    );
  }
}