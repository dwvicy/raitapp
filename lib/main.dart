import 'package:flutter/material.dart';
import 'package:raitapp/ui/pages/intro_page.dart';
import 'package:raitapp/ui/pages/login_screen.dart';

void main() => runApp(RaitApp());

class RaitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Intro(
      ),
      routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) =>
        new LoginPage(
        )
      },

    );
  }
}
