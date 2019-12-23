import 'package:flutter/material.dart';
import 'package:raitapp/custom_icons_icons.dart';
import 'package:raitapp/ui/pages/app_theme.dart';
import 'package:raitapp/ui/pages/attendance.dart';
import 'package:raitapp/ui/pages/prerequisite_page.dart';
import 'package:raitapp/ui/pages/result_page.dart';
import 'package:raitapp/widgets/typewriter_anim.dart';

// ignore: must_be_immutable
class Explore extends StatefulWidget {
  String rollNo;
  String password;

  Explore({this.rollNo, this.password});

  _ExploreState createState() => new _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppTheme.lightyWhitely, AppTheme.lightWhite],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                stops: [0.5, 0]),
          ),
        ),
        leading: Icon(
          CustomIcons.home,
          color: Color(0xFF000000),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        actions: <Widget>[
          new IconButton(
            icon: Icon(CustomIcons.notifications),
            onPressed: () {},
            color: Color(0xFF000000),
          ),
          new IconButton(
            icon: Icon(CustomIcons.more_vert),
            onPressed: () {},
            color: Color(0xff000000),
          )
        ],
        title: Text(
          'Explore',
          style: TextStyle(
            fontFamily: 'Cinzel',
            fontSize: 35,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 250,
              width: 410,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Box(),
              )),
          Padding(
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => AttendanceScreen());
                Navigator.push(context, route);
              },
              child: Container(
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppTheme.crimson, AppTheme.black]),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: AppTheme.black,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                          spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'E-Attendance',
                    style: TextStyle(
                        fontFamily: 'Cinzel',
                        fontSize: 32,
                        color: AppTheme.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => Results());
                Navigator.push(context, route);
              },
              child: Container(
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppTheme.crimson, AppTheme.black]),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: AppTheme.black,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                          spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Results',
                    style: TextStyle(
                        fontFamily: 'Cinzel',
                        fontSize: 32,
                        color: AppTheme.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => PreRequisite());
                Navigator.push(context, route);
              },
              child: Container(
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppTheme.crimson, AppTheme.black]),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: AppTheme.black,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                          spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Pre-requisite',
                    style: TextStyle(
                        fontFamily: 'Cinzel',
                        fontSize: 32,
                        color: AppTheme.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppTheme.crimson, AppTheme.black]),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: AppTheme.black,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                          spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Applications',
                    style: TextStyle(
                        fontFamily: 'Cinzel',
                        fontSize: 32,
                        color: AppTheme.white),
                    textAlign: TextAlign.center,
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
