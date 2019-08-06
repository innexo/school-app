import 'package:flutter/material.dart';
import 'navbars.dart';

class MapPage extends StatelessWidget {
  static const String routeName = '/campus-map';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Campus Map')),
      drawer: AppDrawer(),
      body: new Container(
        height: double.infinity,
        width: double.infinity,
        child: new Image.asset("assets/images/Santa_Teresa_High_School_Map.jpeg"),
      )
    );
  }
}
