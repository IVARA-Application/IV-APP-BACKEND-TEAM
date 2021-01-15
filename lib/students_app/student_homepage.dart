import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
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

       body: Container(
          child: ListView(
           children: <Widget>[
                Text("Hello, \n Sumit "),
                RaisedButton(
                  elevation: 10.0,
                highlightElevation: 30.0,
                padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5.0),
                onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationPage()));
                  },
                       color: Colors.blue,
                        child: Text(
                              'Notification',
                               style: TextStyle(
                                  color: Colors.white,
                                 fontSize: 30,
                               ),
                                         ),
                                     shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
                 RaisedButton(
                          onPressed: () {
                                 Navigator.pushNamed(context, DashboardPage.id);
                                                  },
                        color: Colors.blue,
                         child: Text(
                              'STUDENT DASHBOARD',
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
    'ACADEMICS',
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
    'ATTENDANCE',
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
    'AR LAB',
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
    'AR CLASSROOM',
    style: TextStyle(
    color: Colors.white),
    ),
    shape: new RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(10.0))),

             RaisedButton(
                 onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>ParentsHomePage()));
                 },
                 color: Colors.blue,
                 child: Text(
                   'PARENTS',
                   style: TextStyle(
                       color: Colors.white),
                 ),
                 shape: new RoundedRectangleBorder(
                     borderRadius: new BorderRadius.circular(10.0))),
  
    ],


    ),
   )
    );



  }
}




