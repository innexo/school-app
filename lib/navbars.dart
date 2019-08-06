import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          _createDrawerItem(
              text: 'Tutorial',
              onTap: () {
                _launchURL('https://flutter.dev');
              }),
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
    return Container(
      height: 80.0,
      child: DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text("Options",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500))),
      ]),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    ));
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

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
