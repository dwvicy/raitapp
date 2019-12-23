import 'package:flutter/material.dart';
import 'package:raitapp/custom_icons_icons.dart';
import 'package:raitapp/ui/pages/app_theme.dart';
import 'package:raitapp/ui/pages/unit_test_one.dart';
import 'package:raitapp/ui/pages/unit_test_two.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              CustomIcons.arrow_back,
              color: Color(0xFF000000),
            ),
            onPressed: () {}),
        title: Text(
          'Results',
          style: TextStyle(
              fontFamily: 'Baskervville',
              fontSize: 32,
              color: Color(0xFF000000)),
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppTheme.crimson, AppTheme.black])),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 8,
                child: GestureDetector(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => UnitTestOneResult());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(40),
                    title: Text(
                      'UNIT TEST 1 RESULTS',
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppTheme.crimson, AppTheme.black])),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 8,
                child: GestureDetector(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => UnitTestTwoResult());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(40),
                    title: Text(
                      'UNIT TEST 2 RESULTS',
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
          ),
        ],
      ),
    );
  }
}
