import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/layout/main_drawer.dart';
import 'package:ivara_app/students_app/notification.dart';

import 'Courses_available.dart';
import 'Scholarships.dart';
import 'news_and_blogs.dart';




class StudyAbroadHelpPage extends StatefulWidget{

  static String id = 'StudyAbroadHelpPage';

  @override
  _StudyAbroadHelpPageState  createState() => _StudyAbroadHelpPageState();

}

class _StudyAbroadHelpPageState extends State<StudyAbroadHelpPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("STUDY ABROAD PROGRAM"),
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
              SizedBox(height: 40),
              SizedBox(height: 40),
              SizedBox(height: 40),
              RaisedButton(
                  elevation: 10.0,
                  highlightElevation: 30.0,
                  padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5.0),
                  onPressed: () {
                //    Navigator.push(context,MaterialPageRoute(builder: (context)=>CoursesAvailablePage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'COURSES',
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ScholarshipsPage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'SCHOLARSHIPS',
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
                  highlightElevation: 30.0,
                  padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5.0),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>NewsandblogsPage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'NEWS AND BLOG',
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




