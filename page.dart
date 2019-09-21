import 'package:flutter/material.dart';


class MyTextPage extends StatefulWidget {
  MyTextPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyTextPageState createState() => _MyTextPageState();
}

class _MyTextPageState extends State<MyTextPage> {
  TextStyle defaultStyle = TextStyle(fontSize: 24,color: Colors.black);
  GlobalKey<ScaffoldState> scaffold_state = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      key: scaffold_state,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    TextSpan(text: 'Sans le savoir',style: TextStyle(fontWeight: FontWeight.bold) ),
                    TextSpan(text: ",vous avez peut-etre sur votre ordinateur.",style: TextStyle(fontSize: 10)),
                  ],
                ),
            ),
            InkWell(
              child: Text('des programmes potentiellement dangereux',style: TextStyle(color: Colors.red),),
              onTap: (){
                final snackBar = SnackBar(
                  backgroundColor: Colors.red,
                  content:Row(children: <Widget>[
                  Icon(Icons.change_history),
                  Text('danger ')
                ],
                ),
                );
                scaffold_state.currentState.showSnackBar(snackBar);
              }
            ),
            InkWell(
              child: Text("lire plus..."),
              onTap: (){

              },)
          ],
        ),
      ),
    );

  }
}


