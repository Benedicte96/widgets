import 'package:flutter/material.dart';

class MyMediaPage extends StatefulWidget {
  MyMediaPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyMediaPageState createState() => _MyMediaPageState();
}
class _MyMediaPageState extends State<MyMediaPage>{


  @override
  Widget build(BuildContext context) {

    MediaQueryData deviceInfo = MediaQuery.of(context);

    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Mediaquary'),
        backgroundColor: Colors.teal,
      ),
        body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(color: Colors.deepOrange,
                    height: 300,
                    width: 300,),
                  Spacer(
                    flex: 1,
                  ),
                  Container(color: Colors.pink,height: 200,width: 200,)
                ],
              ),

            ),
        ),


    );
  }
}