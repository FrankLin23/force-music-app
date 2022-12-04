import 'package:flutter/material.dart';
import 'package:force_music_app/pages/home.dart';
import 'package:force_music_app/pages/login/login_page.dart';
import 'package:force_music_app/theme.dart';

void main() {
  runApp(const ForceMusic());
}

class ForceMusic extends StatelessWidget {
  const ForceMusic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Force Music',
      theme: ThemeData(
        primarySwatch: primary,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const Home(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
