import 'package:flutter/material.dart';
import 'package:force_music_app/pages/login/login_form.dart';
import 'package:force_music_app/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: primary,
      padding: const EdgeInsets.only(top: 126),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Column(
          children: <Widget>[
            TabBar(
                controller: _tabController,
                labelColor: primary,
                unselectedLabelColor: const Color(0xFF7A869A),
                tabs: const <Widget>[
                  Tab(text: 'Login'),
                  Tab(text: 'Register')
                ]),
            Flexible(
                flex: 1,
                child: TabBarView(
                  controller: _tabController,
                  children: const <Widget>[
                    LoginForm(),
                    Center(
                      child: Text("Register"),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
