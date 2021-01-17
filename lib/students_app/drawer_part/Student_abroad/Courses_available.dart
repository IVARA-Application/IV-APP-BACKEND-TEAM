import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/layout/main_drawer.dart';
import 'package:ivara_app/students_app/notification.dart';




class CoursesAvailablePage extends StatefulWidget{

  static String id = 'CoursesAvailablePage';

  @override
  _CoursesAvailablePageState  createState() => _CoursesAvailablePageState();

}

class _CoursesAvailablePageState extends State<CoursesAvailablePage> {

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
                  //  Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatToCounsellorPage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'Courses',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
              RaisedButton(
                  onPressed: () {
                //    Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatToCounsellorPage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'SCHOLARSHIPS',
                    style: TextStyle(
                        color: Colors.white),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
              RaisedButton(
                  onPressed: () {
                   // Navigator.push(context,MaterialPageRoute(builder: (context)=>HealMyMindVideosPage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'NEWS AND BLOG',
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
