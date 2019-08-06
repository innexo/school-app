import 'package:flutter/material.dart';
import 'navbars.dart';

class PostDisplay extends StatefulWidget {
  static const String routeName = '/';

  PostDisplay({
    Key key,
  }) : super(key: key);

  @override
  _UpdateDisplay createState() => _UpdateDisplay();
}

class _UpdateDisplay extends State<PostDisplay> {
  ScrollController controller;
  List<String> posts;

  @override
  void initState() {
    super.initState();
    controller = new ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ModalRoute.of(context).settings.name)),
      drawer: AppDrawer(),
    );
  }

  void _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.extentAfter < 500) {
      setState(() {
        posts.addAll(new List.generate(42, (index) => 'Inserted $index'));
      });
    }
  }
}
