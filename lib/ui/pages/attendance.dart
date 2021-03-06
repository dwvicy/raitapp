import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:raitapp/models/subject_attendance.dart';
import 'package:raitapp/network/rait_api.dart';
import 'package:raitapp/ui/pages/app_theme.dart';

const kTextStyle = TextStyle(
    fontSize: 32.0, color: AppTheme.black, fontFamily: 'Baskervville');
const baskStylez = TextStyle(
    fontSize: 32.0, color: AppTheme.white, fontFamily: 'Baskervville');
const kBigTextStyle =
    TextStyle(fontSize: 25.0, color: Colors.black87, fontFamily: 'Cinzel');
const CinzStylez =
    TextStyle(fontSize: 25.0, color: AppTheme.white, fontFamily: 'Cinzel');

class AttendanceScreen extends StatelessWidget {
  final RaitApi raitApi = RaitApi();
  final String rollNo;

  AttendanceScreen({this.rollNo});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Attendance", style: kTextStyle),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppTheme.lightyWhitely, AppTheme.lightWhite],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    stops: [0.5, 0]),
              ),
            ),
          ),
          body: Container(
            child: FutureBuilder(
                future: raitApi.getStudentAttendance(rollNo),
                builder:
                    (context, AsyncSnapshot<List<SubjectAttendance>> snapshot) {
                  if (!snapshot.hasData)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  List<SubjectAttendance> subjectAttendances = snapshot.data;
                  List<AttendanceCard> attendanceCards = subjectAttendances
                      .map((subjectAttendance) => AttendanceCard(
                            subjectAttendance: subjectAttendance,
                          ))
                      .toList();
                  double percentage = 0.0;
                  for (SubjectAttendance subjectAttendance
                      in subjectAttendances)
                    percentage += subjectAttendance.attendedLectures /
                        subjectAttendance.totalLectures;
                  percentage /= subjectAttendances.length;
                  String percentageString;
                  if (percentage <= 0.1) {
                    percentageString =
                        (percentage * 100).toString().substring(0, 3) + "%";
                  } else
                    percentageString =
                        (percentage * 100).toString().substring(0, 4) + "%";
                  return ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200.0,
                          width: 410,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [AppTheme.crimson, AppTheme.black])),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(percentageString, style: kTextStyle),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "Your attendance is LOW",
                                style: kTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ignore: sdk_version_ui_as_code
                      ...attendanceCards
                    ],
                  );
                }),
          )),
    );
  }
}

// ignore: must_be_immutable
class AttendanceCard extends StatelessWidget {
  SubjectAttendance subjectAttendance;

  AttendanceCard({@required this.subjectAttendance});

  @override
  Widget build(BuildContext context) {
    double percentage =
        subjectAttendance.attendedLectures / subjectAttendance.totalLectures;
    // double percentage = 50/100;
    String percentageString;
    if (percentage <= 0.1) {
      percentageString = (percentage * 100).toString().substring(0, 3);
    } else
      percentageString = (percentage * 100).toString().substring(0, 4);

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  subjectAttendance.subjectName,
                  style: kBigTextStyle,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 5.0,
                    percent: percentage,
                    center: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          percentageString,
                          style: kBigTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "${subjectAttendance.attendedLectures}/${subjectAttendance.totalLectures}",
                            style: kBigTextStyle,
                          ),
                        )
                      ],
                    ),
                    progressColor: percentage < 0.75
                        ? AppTheme.lightRed
                        : Colors.lightGreen,
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
