import 'package:flutter/material.dart';
import 'navbars.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    drawer: Navbars(),
    appBar: AppBar(title: Text('Campus Map')),
    body: new Container(
    height: double.infinity,
    width: double.infinity,
    child: new Image.asset("assets/images/Santa_Teresa_High_School_Map.png"),
      )
    );
  }
}
