import 'dart:async';

import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => new _IntroState();
}

class _IntroState extends State<Intro> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Login');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/images/Rait_new_logo_png.png'),
      ),
    );
  }
}
