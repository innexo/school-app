import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'map_page.dart';

class Navbars extends StatelessWidget {

  Navbars({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
              height: Theme.of(context).textTheme.body1.fontSize * 8,
              child: DrawerHeader(
                child: Text(
                  'Options',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[400],
              ),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0)),
          ListTile(
            title: Text('School Map'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapPage()),
              );
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
    );
  }
}
