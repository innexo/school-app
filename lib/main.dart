import 'package:web_socket_channel/io.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'School App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: HomePage(
        title: appTitle,
        channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),
        ),
    );
  }
}