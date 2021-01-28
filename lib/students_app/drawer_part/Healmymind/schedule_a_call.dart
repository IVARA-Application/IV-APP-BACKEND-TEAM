import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/layout/main_drawer.dart';
import 'package:ivara_app/students_app/notification.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:ivara_app/students_app/layout/sidebar.dart';



class ScheduleCallPage extends StatefulWidget{

  static String id = 'ScheduleCallPage';

  @override
  _ScheduleCallPageState  createState() => _ScheduleCallPageState();

}

class _ScheduleCallPageState extends State<ScheduleCallPage> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0772a0),
        centerTitle: true,
        elevation: 1.0,
        title: Text('SCHEDULE A CALL',
        style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(LineAwesomeIcons.bell),
            color: Colors.white,
            highlightColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, NotificationPage.id);
            },
          )
        ],
      ),

      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.02,horizontal: screenWidth*0.05),
                child: Material(
                  elevation: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: Color(0xff0772a0),
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
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.02,horizontal: screenWidth*0.05),
                child: Material(
                  elevation: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: Color(0xff0772a0),
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
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.02,horizontal: screenWidth*0.05),
                child: Material(
                  elevation: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: Color(0xff0772a0),
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
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.02,horizontal: screenWidth*0.05),
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
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.02,horizontal: screenWidth*0.05),
                child: Material(
                  elevation: 10,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      focusColor: Color(0xff0772a0),
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth*0.3,
                  vertical: screenHeight*0.03
                ),
                child: RaisedButton(
                    elevation: 10.0,
                    highlightElevation: 30.0,
                    padding: EdgeInsets.symmetric(vertical: screenHeight*0.024,horizontal: screenWidth*0.02),
                    onPressed: () {},
                    color: Color(0xff0772a0),
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: 15,
                          color: Colors.white),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0))),
              ),
            ],
          ),
        ),
      ),
    );



  }

}

