import 'package:flutter/material.dart';


class MySliverPage extends StatefulWidget {
  MySliverPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySliverPageState createState() => new _MySliverPageState();
}

ScrollController _controller;

class _MySliverPageState extends State<MySliverPage> {

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  Color clr = Colors.lightGreen;
  _scrollListener() {

    if (_controller.offset > _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        clr = Colors.red;
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        clr = Colors.lightGreen;
      });
    }

  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello"),
      ),
      body: new Center(
        child:
        new Container(
          child:
          CustomScrollView(
            controller: _controller,
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: FlutterLogo(
                    size: 20.0,
                    colors: Colors.blue,
                  ),
                ),
                backgroundColor: clr,
              ),
              SliverFixedExtentList(
                itemExtent: 30.0,
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index % 9)],
                      child: Text('list item $index'),
                    );
                  },
                  childCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}