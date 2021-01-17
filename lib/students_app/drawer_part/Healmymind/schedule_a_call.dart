import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/layout/main_drawer.dart';
import 'package:ivara_app/students_app/notification.dart';




class ScheduleCallPage extends StatefulWidget{

  static String id = 'ScheduleCallPage';

  @override
  _ScheduleCallPageState  createState() => _ScheduleCallPageState();

}

class _ScheduleCallPageState extends State<ScheduleCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SCHEDULE A CALL"),
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
                  child: Text('Take Appointment',
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
                      labelText: 'Email ID',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Email ID',
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
                      labelText: 'Book Slot',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Book Slot.',
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
                      labelText: 'Describe The Problem',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Describe The Problem',
                    ),
                  ),
                ),
              ),
              RaisedButton(
                  elevation: 10.0,
                  highlightElevation: 30.0,
                  padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                  onPressed: () {
                 //   Navigator.push(context,MaterialPageRoute(builder: (context)=>ScheduleCallPage()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      fontSize: 15,
                        color: Colors.white),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
            ],
          ),
        ),
      ),
    );



  }

}

