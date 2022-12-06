import 'package:flutter/material.dart';
import 'package:force_music_app/pages/home/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: const <Widget>[Header()],
            )));
  }
}
