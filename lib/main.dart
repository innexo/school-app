import 'package:flutter/material.dart';
import 'post_display.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'School App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),   
      home: PostDisplay(),
    );
  }
}