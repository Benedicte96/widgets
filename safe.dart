import 'package:flutter/material.dart';

class MySafePage extends StatelessWidget {
  MySafePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}
class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(16.0),
        child: Text(
            'Bienvenue a Nan. A Nan vous receverais \'une formation  '
                'de qualite en plus gratuite, alors nous vous attendons.'),
      ),
    );
  }
}