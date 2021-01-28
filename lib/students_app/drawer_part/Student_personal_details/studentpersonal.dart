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


class StudentPersonalPage extends StatefulWidget{

  static String id = 'studentPersonalPage';

  @override
  _StudentPersonalPageState  createState() => _StudentPersonalPageState();

}

class _StudentPersonalPageState extends State<StudentPersonalPage> {

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
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('STUDENT DETAILS',
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
      drawer: MyDrawer(
        onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        },
      ),

        body: SafeArea(
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: screenWidth*0.05),
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
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: screenWidth*0.05),
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
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: screenWidth*0.05),
                  child: Material(
                    elevation: 20,
                    child: TextField(
                      decoration: InputDecoration(
                      focusColor: Color(0xff0772a0),
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
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: screenWidth*0.05),
                  child: Material(
                    elevation: 10,
                    child: TextField(
                      decoration: InputDecoration(
                      focusColor: Color(0xff0772a0),
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
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: screenWidth*0.05),
                  child: Material(
                    elevation: 10,
                    child: TextField(
                      decoration: InputDecoration(
                      focusColor: Color(0xff0772a0),
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
