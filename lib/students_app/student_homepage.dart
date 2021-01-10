import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/notification.dart';

class StudentHomePage extends StatelessWidget {
  static String id = 'StudentHomePage';
  const StudentHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("This is student homepage"),
            RaisedButton(
                onPressed: () { 
                  Navigator.pushNamed(context, NotificationPage.id);
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