import 'package:flutter/material.dart';
import 'attendanceCard.dart';

class StudentAttendanceViewPage extends StatefulWidget {
  static String id = 'StudentAttendanceViewPage';
  const StudentAttendanceViewPage({Key key}) : super(key: key);

  @override
  _StudentAttendanceViewPageState createState() =>
      _StudentAttendanceViewPageState();
}

class _StudentAttendanceViewPageState extends State<StudentAttendanceViewPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    Map testCard = {'subject': 'Physics', 'topic': 'Refraction'};

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF076FA0),
        title: Center(
          child: Text('IVARA'),
        ),
        actions: [Icon(Icons.notifications)],
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight * 0.055),
              Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(children: [AttendanceCardWidget(75)])),
            ],
          ),
          Positioned(
            left: screenWidth * 0.08,
            bottom: screenHeight * 0.05,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Material(
                  color: Colors.transparent,
                  shape: CircleBorder(),
                  child: Image.asset(
                    './assets/backbutton.png',
                    height: screenHeight * 0.1,
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
