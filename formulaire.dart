import 'package:flutter/material.dart';


class Formulaire extends StatefulWidget {
  @override
  _FormulaireState createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> with SingleTickerProviderStateMixin{


  String _text = "";
  double _btn;
  bool clics = false;
  double _opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulaire"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            duration: Duration(seconds: 4),
            bottom: _btn,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Draggable(
                    data: 1,
                      child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Colors.green,),
                          hintText: "Email")
                      ),
                      feedback: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.email, color: Colors.green,),
                            hintText: "Email"
                        )
                      )
                  ),
                  SizedBox(height: 15,),
                  Draggable(

                      data: 1,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock, color: Colors.green,),
                            hintText: "Password"
                        ),
                      ),
                      feedback: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock, color: Colors.green,),
                            hintText: "Password"
                        ),

                      ),
                  ),
                  SizedBox(height: 15,),

                  RaisedButton(
                      child: Text("Soumettre"),
                      onPressed: (){
                    setState(() {
                      if(clics == false)
                        _btn = 100;
                      _opacity = 1;
                      _text = "Bienvenue";
                    });
                  }),
                ],
              ),
            ),

          ),
          Positioned(
            bottom: 200,
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                curve: Curves.bounceIn,
                child: Text(_text, style: TextStyle(fontSize: 35),),
              )

          ),

        ],
      )





    );
  }
}
