import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';

import 'package:ivara_app/students_app/notification.dart';

import 'Parents_attendance/p_attendance.dart';
import 'Teachers_list/teacherlist.dart';



class ParentsHomePage extends StatefulWidget{

  static String id = 'ParentsHomePage';

  @override
  _ParentsHomePageState  createState() => _ParentsHomePageState();

}

class _ParentsHomePageState extends State<ParentsHomePage> {

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

        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 40),
              SizedBox(height: 40),
              SizedBox(height: 40),
              RaisedButton(
                  elevation: 10.0,
                  highlightElevation: 10.0,
                  padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5.0),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Teacherlist()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'TEACHER LIST',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
              SizedBox(height: 40),
              SizedBox(height: 40),
              RaisedButton(
                  elevation: 10.0,
                  highlightElevation: 10.0,
                  padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5.0),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>AcademicsPage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'ACADEMICS',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
              SizedBox(height: 40),
              SizedBox(height: 40),
              RaisedButton(
                  elevation: 10.0,
                  highlightElevation: 10.0,
                  padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5.0),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>PAttendancePage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'ATTENDANCE',
                    style: TextStyle(
                        fontSize: 30,
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