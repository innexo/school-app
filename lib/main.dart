import 'package:flutter/material.dart';
import 'package:school_app/latest_posts.dart';
import 'app_routes.dart';
import 'map_page.dart';

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
      initialRoute: Routes.postsDisplayPage,
      routes:  {
        Routes.postsDisplayPage: (context) => PostDisplay(),
        Routes.campusMap: (context) => MapPage(),
        //Routes.notes: (context) => NotesPage(),
      },
    );
  }
}