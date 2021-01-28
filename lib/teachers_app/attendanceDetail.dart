import 'package:flutter/material.dart';

class AttendanceDetail extends StatefulWidget {
  static String id = 'AttendanceDetail';
  @override
  _AttendanceDetailState createState() => _AttendanceDetailState();
}

class _AttendanceDetailState extends State<AttendanceDetail> {
  Color blue = Color(0xFF076FA0);
  List<Map> attendanceList = [
    {
      'dates': 'Monday', 'absent': true
    },
    {'dates': 'Tuesday', 'absent': false},
    {'dates': 'Wednesday', 'absent': false},
    {
      'dates': 'Thursday', 'absent': true
    },
    {'dates': 'Friday', 'absent': false},
    {'dates': 'Saturday', 'absent': false},
  ];

  Widget getAttendanceList(screenHeight,screenWidth){
    return ListView.builder(
                          itemCount: attendanceList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05,vertical: screenHeight*0.015),
                              child: Row(children: [
                                Text(attendanceList[index]['dates'],
                                    style: TextStyle(
                                        fontSize: screenHeight * 0.028,
                                        fontWeight: FontWeight.w600)),
                                Spacer(),
                                Stack(
                                    children: [
                                      Icon(attendanceList[index]['absent']?Icons.brightness_1:Icons.radio_button_unchecked,color:attendanceList[index]['absent']?Colors.red:Colors.black),
                                      Icon(Icons.radio_button_unchecked),
                                    ],
                                ),
                                SizedBox(width: screenWidth * 0.06)
                              ]),
                            );
                          },
                        );
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blue,
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('IVARA')),
        backgroundColor: blue,
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('TapNotification');
            },
            icon: Stack(
              children: <Widget>[
                Icon(Icons.notifications, color: Colors.white),
                Positioned(
                  left: 14.0,
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.white,
                    size: 9.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight * 0.04,
                      vertical: screenHeight * 0.02),
                  child: Center(
                    child: Text('Attendance List',
                        style: TextStyle(
                            fontSize: screenHeight * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(screenHeight * 0.04),
                              topLeft: Radius.circular(screenHeight * 0.04)),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.05),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.05),
                            child: Row(
                              children: [
                                Text('DATES',
                                    style: TextStyle(
                                        fontSize: screenHeight * 0.028,
                                        fontWeight: FontWeight.w800,
                                        color: blue)),
                                Spacer(),
                                Text('ABSENT',
                                    style: TextStyle(
                                        fontSize: screenHeight * 0.028,
                                        fontWeight: FontWeight.w800,
                                        color: blue)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: getAttendanceList(screenHeight, screenWidth),
                          ),
                        ],
                      )),
                ),
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
