import 'package:flutter/material.dart';
import 'package:ivara_app/teachers_app/academics.dart';
import 'package:ivara_app/teachers_app/attendance.dart';
import 'package:ivara_app/teachers_app/doubtPortal.dart';
import 'package:ivara_app/teachers_app/entermarks.dart';
import 'package:ivara_app/teachers_app/parentConnect.dart';
import 'package:ivara_app/teachers_app/profile.dart';
import 'package:ivara_app/teachers_app/studentAttendance.dart';

class TeacherClassroom extends StatefulWidget {
  static String id = 'TeacherClassroom';
  @override
  _TeacherClassroomState createState() => _TeacherClassroomState();
}

class _TeacherClassroomState extends State<TeacherClassroom> {
  Color blue = Color(0xFF076FA0);

  List<String> students = [
    'Name of Student',
    'Hemanth',
    'Khushwant',
    'Tarun',
  ];

  Widget makeDropDown(List<String> dropdownList, screenWidth, screenHeight) {
    return Padding(
      padding: EdgeInsets.symmetric(
                  horizontal: screenHeight * 0.02,
                  vertical: screenHeight * 0.01),
      child: Container(
        height: screenHeight * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenHeight * 0.015),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[700],
              blurRadius: 3.0,
              spreadRadius: 1.0,
              offset: Offset(1.0, 2.0),
            )
          ],
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isDense: true,
            elevation: 8,
            hint: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: Text(
                dropdownList[0],
                style: TextStyle(color: Colors.grey),
              ),
            ),
            icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
            items: dropdownList.map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blue,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*0.02,),
                makeDropDown(students, screenWidth, screenHeight),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight * 0.04,
                      vertical: screenHeight * 0.02),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Text('Hello,',
                              style: TextStyle(
                                  fontSize: screenHeight * 0.05,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300)),
                          Text('Hemanth',
                              style: TextStyle(
                                  fontSize: screenHeight * 0.05,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300))
                        ],
                      ),
                      Spacer(),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('./assets/profile.png',
                              height: screenHeight * 0.12)),
                      
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(screenHeight * 0.04),
                            topLeft: Radius.circular(screenHeight * 0.04)),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight * 0.04,
                          vertical: screenHeight * 0.0),
                      child: ListView(
                        children: [
                          SizedBox(height: screenHeight * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: RaisedButton(
                                    color: blue,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(
                                            screenHeight * 0.015)),
                                    onPressed: () {
                                      Navigator.pushNamed(context, TeacherAcademicsPage.id);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: screenHeight * 0.04),
                                      child: Column(
                                        children: [
                                          Text('ACADEMIC',
                                              style: TextStyle(
                                                  fontSize: screenHeight * 0.02,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white)),
                                          Text('REPORT',
                                              style: TextStyle(
                                                  fontSize: screenHeight * 0.02,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    )),
                              ),
                              SizedBox(width: screenHeight * 0.04),
                              Expanded(
                                child: RaisedButton(
                                    color: blue,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(
                                            screenHeight * 0.015)),
                                    onPressed: () {
                                      Navigator.pushNamed(context, StudentAttendanceViewPage.id);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: screenHeight * 0.04),
                                      child: Column(
                                        children: [
                                          Text('ATTENDANCE',
                                              style: TextStyle(
                                                  fontSize: screenHeight * 0.02,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white)),
                                                  Text('DASHBOARD',
                                              style: TextStyle(
                                                  fontSize: screenHeight * 0.02,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ] 
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,ParentConnect.id);
                    },
                    color: blue,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      child: Center(
                        child: Text('Connect With Parent',
                            style: TextStyle(
                                fontSize: screenHeight * 0.025,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                    ))
              ],
            ),
            Positioned(
                left: screenWidth*0.08,
                bottom: screenHeight*0.05,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Material(
                    color: Colors.transparent,
                    shape: CircleBorder(),
                    child: Image.asset('./assets/backbutton.png',height: screenHeight*0.1,)),),
              ),
          ],
        ),
      ),
    );
  }
}
