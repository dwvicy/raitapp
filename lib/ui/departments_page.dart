import 'package:flutter/material.dart';

class Departments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Departments',
            style: TextStyle(
                fontFamily: 'Baskervville',
                fontSize: 32,
                color: Color(0xFF000000)),
          ),
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF8c0000),
                elevation: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "myRoute");
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(25),
                    title: Text(
                      'Computer Engineering',
                      style: TextStyle(
                          fontFamily: 'Cinzel',
                          fontSize: 30,
                          color: Color(0xFFFFFFFF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF8c0000),
                elevation: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "myRoute");
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(25),
                    title: Text(
                      'Information Technology',
                      style: TextStyle(
                          fontFamily: 'Cinzel',
                          fontSize: 30,
                          color: Color(0xFFFFFFFF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF8c0000),
                elevation: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "myRoute");
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(40),
                    title: Text(
                      'EXTC',
                      style: TextStyle(
                          fontFamily: 'Cinzel',
                          fontSize: 30,
                          color: Color(0xFFFFFFFF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF8c0000),
                elevation: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "myRoute");
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(25),
                    title: Text(
                      'Electrical Engineering',
                      style: TextStyle(
                          fontFamily: 'Cinzel',
                          fontSize: 30,
                          color: Color(0xFFFFFFFF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF8c0000),
                elevation: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "myRoute");
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(25),
                    title: Text(
                      'Instrumentation Engineering',
                      style: TextStyle(
                          fontFamily: 'Cinzel',
                          fontSize: 30,
                          color: Color(0xFFFFffff)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
