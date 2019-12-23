import 'package:flutter/material.dart';
import 'package:raitapp/ui/pages/app_theme.dart';

import 'login_page.dart';

// ignore: must_be_immutable
class Departments extends StatelessWidget {
  List<String> departments = [
    "Computer Engineering",
    "Information Technology",
    "EXTC",
    "Electrical Engineering",
    "Instrumentation"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Departments',
            style: TextStyle(
                fontFamily: 'Baskervville',
                fontSize: 32,
                color: Color(
                    0xFF000000)),
          ),
          backgroundColor: Color(
              0xFFFFFFFF),
        ),
        body: Padding(
          padding: const EdgeInsets.all(
              8.0),
          child: ListView.builder(
            itemBuilder: (_, index) {
              return DepartmentCard(
                department: departments[index],
              );
            },
            itemCount: departments.length,
          ),
        ));
  }
}

// ignore: must_be_immutable
class DepartmentCard extends StatelessWidget {
  String department;

  DepartmentCard({this.department});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
          5.0),
      child: Stack(
        children: [ Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  20)),
          color: Color(
              0xFF8c0000),
          elevation: 8,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                  context, "myRoute");
            },
            child: Container(
              height: 100,
              width: 410,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppTheme.crimson, AppTheme.black]
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(
                          30)),
                  boxShadow: [
                    BoxShadow(
                        color: AppTheme.black,
                        blurRadius: 5,
                        offset: Offset(
                            0, 5),
                        spreadRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(
                    40.0),
                child: Text(
                  department,
                  style: TextStyle(
                      fontFamily: 'Cinzel',
                      fontSize: 20,
                      color: Color(
                          0xFFFFFFFF)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
          Positioned.fill(
              child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: () =>
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (_) =>
                                Login(
                                ))),
                  )))
        ],),
    );
  }
}


