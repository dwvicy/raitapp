import 'package:flutter/material.dart';
import 'package:raitapp/ui/pages/app_theme.dart';

const baskStylez =
    TextStyle(fontFamily: 'Cinzel', fontSize: 40, color: AppTheme.white);

class ClassNotif extends StatefulWidget {
  _ClassNotifState createState() => new _ClassNotifState();
}

class _ClassNotifState extends State<ClassNotif> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [AppTheme.crimson, AppTheme.black])),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Class",
                style: baskStylez,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: SafeArea(
                  child: ListTile(
                    leading: SizedBox.fromSize(
                        size: const Size(40, 40),
                        child: ClipOval(
                            child: Container(
                          color: Colors.black,
                        ))),
                    title: Text('FilledStacks'),
                    subtitle: Text('Thanks for checking out my tutorial'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
