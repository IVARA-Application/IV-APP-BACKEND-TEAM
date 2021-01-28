import 'package:flutter/material.dart';
import 'package:ivara_app/teachers_app/attendance.dart';
import 'package:ivara_app/teachers_app/attendanceDetail.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AttendanceCardWidget extends StatelessWidget {
  final int attendance;
  // final dateToday = DateTime.now();
  // final DateTime rawTime = '${dateToday.year}';
  // final secondsTimer = dateToday.diffrence(dateDue).inSeconds;

  AttendanceCardWidget(this.attendance);
  Color blue = Color(0xFF076FA0);
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.04,
        left: screenWidth * 0.06,
        right: screenWidth * 0.06,
      ),
      child: GestureDetector(
        onTap: () => {},
        child: Container(
            width: screenWidth,
            height: screenHeight * 0.22,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  spreadRadius: 6.0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: screenWidth * 0.038,
                  height: screenHeight * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: Color(0xFF076FA0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                        ),
                        child: Text(
                          'Total Attendance',
                          style:
                              TextStyle(fontSize: screenHeight*0.03, color: Color(0xFF076FA0)),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap:(){
                          Navigator.pushNamed(context, AttendanceDetail.id);
                        },
                                              child: Padding(
                          padding: EdgeInsets.only(
                            bottom: screenHeight * 0.02,
                          ),
                          child: Text(
                            'View Detailed Analysis',
                            style:
                                TextStyle(fontSize: screenHeight*0.025, color: Color(0xFF076FA0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: screenHeight * 0.018,
                  ),
                  child:CircularPercentIndicator(
                      radius: screenWidth * 0.3,
                      lineWidth: 12.0,
                      percent: attendance/100,
                      center: Text('$attendance%',style:TextStyle(fontSize: screenHeight*0.03,fontWeight: FontWeight.w800, color: blue)),
                      progressColor: blue,
                      backgroundColor: Colors.white,
                      animation: true,
                      animationDuration: 1000,
                      reverse: true,
                    )
                ),
              ],
            )),
      ),
    );
  }
}
