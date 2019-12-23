import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raitapp/custom_icons_icons.dart';
import 'package:raitapp/notif_icons_icons.dart';
import 'package:raitapp/ui/pages/admin_placeholder.dart';
import 'package:raitapp/ui/pages/app_theme.dart';
import 'package:raitapp/ui/pages/class_placeholder.dart';
import 'package:raitapp/ui/pages/departmental_placeholder.dart';
import 'package:raitapp/ui/pages/princi_placeholder.dart';

const baskStylez = TextStyle(fontSize: 32, fontFamily: 'Baskervville');

class NotifTab extends StatefulWidget {
  @override
  _NotifTabState createState() => _NotifTabState();
}

List<Widget> _notifTabs() => [
      Tab(
        icon: Icon(NotifIcons.administrative),
      ),
      Tab(icon: Icon(NotifIcons.principal_s_desk)),
      Tab(
        icon: Icon(NotifIcons.department),
      ),
      Tab(
        icon: Icon(NotifIcons.class_icon),
      ),
    ];

TabBar _notifTabBar() => TabBar(
      tabs: _notifTabs(),
      labelColor: AppTheme.crimson,
      labelPadding: EdgeInsets.symmetric(vertical: 10),
      labelStyle: TextStyle(fontSize: 20, fontFamily: 'Baskervville'),
      unselectedLabelColor: AppTheme.nearlyBlack,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppTheme.crimson, width: 2),
        insets: EdgeInsets.symmetric(horizontal: 20),
      ),
      onTap: (index) {
        var content = "";
        switch (index) {
          case 0:
            content = 'Administrative Notifications';
            break;
          case 1:
            content = "Principal's Desk";
            break;
          case 2:
            content = "Departmental Notifications";
            break;
          case 3:
            content = "Class Notifications";
            break;
          default:
            content = "Other";
            break;
        }
        print("You are looking at the $content");
      },
    );

class _NotifTabState extends State<NotifTab>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              CustomIcons.arrow_back,
              color: AppTheme.black,
            ),
            onPressed: () {}),
        title: Text('Notifications',
            style: TextStyle(
                fontFamily: 'Baskervville',
                fontSize: 32,
                color: AppTheme.black)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppTheme.lightWhite, AppTheme.white]),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(CustomIcons.more_vert, color: AppTheme.black),
            onPressed: () {},
          )
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: _notifTabBar(),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Container(
                    child: Admin(),
                  ),
                  Container(
                    child: Principal(),
                  ),
                  Container(
                    child: Departmental(),
                  ),
                  Container(
                    child: ClassNotif(),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
