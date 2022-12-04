import 'package:flutter/material.dart';
import 'package:force_music_app/theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35, top: 42, right: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Login",
            style: TextStyle(
                fontSize: 24,
                color: Color(0xFF002251),
                letterSpacing: 0,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 7),
          const Text(
            "Welcome to Force Music",
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFF7A869A),
                letterSpacing: 0,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 35),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Please Input Username/Phone",
                labelText: 'Username/Phone'),
            onSaved: (String? value) {},
            validator: (String? value) {
              return (value != null && value.contains('@'))
                  ? 'Do not use the @ char.'
                  : null;
            },
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Please Input Password", labelText: 'Password'),
            onSaved: (String? value) {},
            validator: (String? value) {
              return (value != null && value.contains('@'))
                  ? 'Do not use the @ char.'
                  : null;
            },
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Forget Password?",
            style: TextStyle(fontSize: 13, color: primary),
          ),
          const SizedBox(height: 24),
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: const Text("Login"),
            ),
          ),
          const SizedBox(
            height: 129,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Don't have an account?",
                style: TextStyle(
                    color: Color(0xFF7A869A),
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Register Now",
                style: TextStyle(
                    color: primary,
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
