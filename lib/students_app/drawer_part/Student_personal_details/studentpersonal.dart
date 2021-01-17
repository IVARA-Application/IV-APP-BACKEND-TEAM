import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/layout/main_drawer.dart';
import 'package:ivara_app/students_app/notification.dart';


class StudentPersonalPage extends StatefulWidget{

  static String id = 'EntranceExamsPage';

  @override
  _StudentPersonalPageState  createState() => _StudentPersonalPageState();

}

class _StudentPersonalPageState extends State<StudentPersonalPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("STUDENT DETAILS"),
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
          child: Container(
            child: ListView(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Center(
                  child: Text('Personal Info',
                    style: TextStyle(color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
                  ),
                ),
                  
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 5.0),
                  child: Material(
                    elevation: 20,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: 'Your Full Name',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 5.0),
                  child: Material(
                    elevation: 20,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        labelText: 'Phone No.',
                        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: 'Phone No.',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 5.0),
                  child: Material(
                    elevation: 20,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder( borderRadius: new BorderRadius.circular(10.0),
                        ) ,
                        labelText: 'Iv ID',
                        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: 'Iv ID',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 5.0),
                  child: Material(
                    elevation: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        labelText: 'Parent No.',
                        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: 'Parent No.',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 5.0),
                  child: Material(
                    elevation: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),

                        labelText: 'Parent Email Id',
                        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: 'Parent Email Id',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );



  }
}
