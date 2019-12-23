import 'package:flutter/material.dart';
import 'package:raitapp/ui/departments_page.dart';

void main() => runApp(RaitApp());

class RaitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RAIT App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Departments(),
    );
  }
}
