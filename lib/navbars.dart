import 'package:flutter/material.dart';

import 'app_routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
            text: 'Recent Posts',
            onTap: () {
              if ((ModalRoute.of(context)
                  .settings
                  .name
                  .endsWith(Routes.postsDisplayPage))) {
                Navigator.pop(context);
              } else {
                Navigator.pushReplacementNamed(
                    context, Routes.postsDisplayPage);
              }
            },
            selected: isSelected(context, Routes.postsDisplayPage),
          ),
          _createDrawerItem(
            text: 'Campus Map',
            onTap: () {
              if ((ModalRoute.of(context)
                  .settings
                  .name
                  .endsWith(Routes.campusMap))) {
                Navigator.pop(context);
              } else {
                Navigator.pushReplacementNamed(context, Routes.campusMap);
              }
            },
            selected: isSelected(context, Routes.campusMap),
          ),
          Divider(),
          _createDrawerItem(
            text: 'Report an issue',
            onTap: () {},
          ),
          ListTile(
            title: Text(
              '0.0.1',
              style: TextStyle(color: (Colors.black)),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Flutter Step-by-Step",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {String text, GestureTapCallback onTap, bool selected = false}) {
    return ListTile(
      selected: selected,
      title: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  bool isSelected(context, route) {
    return ModalRoute.of(context).settings.name.endsWith(route);
  }
}
