import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/notification.dart';

import 'layout/main_drawer.dart';


class StudentHomePage extends StatefulWidget{

  static String id = 'StudentHomePage';

  @override
  _StudentHomePageState  createState() => _StudentHomePageState();

}

class _StudentHomePageState extends State<StudentHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IVENTORS"),
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationPage()));

                },
                icon: Stack(
                  children: <Widget>[
                    Icon(Icons.notifications,
                        color: Colors.white),
                    Positioned(
                      left: 16.0,
                      child: Icon(Icons.brightness_1,
                        color: Colors.red,
                        size: 9.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      drawer: MainDrawer(),

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text("This is student homepage"),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationPage()));

                },
                color: Colors.blue,
                child: Text(
                  'Notification',
                  style: TextStyle(
                      color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, DashboardPage.id);
                },
                color: Colors.blue,
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                      color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AcademicsPage.id);
                },
                color: Colors.blue,
                child: Text(
                  'Academics',
                  style: TextStyle(
                      color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AttendancePage.id);
                },
                color: Colors.blue,
                child: Text(
                  'Attendance',
                  style: TextStyle(
                      color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),

          ],
        ),
      ),

    );
  }
}



