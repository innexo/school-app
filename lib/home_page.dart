import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter/material.dart';
import 'post_display.dart';

class HomePage extends StatelessWidget {
  final String title;
  final IOWebSocketChannel channel;

  HomePage({Key key, this.title, @required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: PostDisplay(),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: Theme.of(context).textTheme.body1.fontSize * 8,
              child: 
                DrawerHeader(
                child: 
                  
                  Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                 ),
              decoration: BoxDecoration(
                color: Colors.blue[400],
              ),
             
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0)
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}