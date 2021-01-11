import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  static String id = 'AttendancePage';
  const AttendancePage({Key key}) : super(key: key);
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  int currentday = 0;
  Color blue = Color(0xFF076FA0);
  List<Map> attendance=[
    {
      'time':'7:00 AM',
      'subject':'Physics',
      'teacherName':'Akansha',
      'teacherId':'2978',
      'roomNo':'C208',
      'present':true
    },
    {
      'time':'9:00 AM',
      'subject':'Biology',
      'teacherName':'Hemanth',
      'teacherId':'007',
      'roomNo':'C290',
      'present':false
    },
    {
      'time':'11:00 AM',
      'subject':'Maths',
      'teacherName':'Tarun',
      'teacherId':'1574',
      'roomNo':'C114',
      'present':true
    },
    {
      'time':'1:00 PM',
      'subject':'Hindi',
      'teacherName':'Hemanth',
      'teacherId':'007',
      'roomNo':'C290',
      'present':false
    },
  ];
  var months = [
    'Jan',
    'Feb',
    'March',
    'April',
    'May',
    'June',
    'July',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec'
  ];
  var years = ['2020', '2021'];
  var days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ];

  Widget makeDropDown(List<String> dropdownList, screenWidth, screenHeight) {
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Container(
        height: screenHeight * 0.046,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3.0,
              spreadRadius: 1.0,
              offset: Offset(1.0, 2.0),
            )
          ],
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isDense: true,
            elevation: 10,
            hint: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: Text(
                dropdownList[0],
                style: TextStyle(color: blue),
              ),
            ),
            iconEnabledColor: blue,
            icon: Icon(Icons.keyboard_arrow_down),
            items: dropdownList.map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(
                  value,
                  style: TextStyle(color: blue),
                ),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
      ),
    );
  }

  Widget makeCalendarList(screenWidth, screenHeight) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(screenWidth * 0.015),
          child: GestureDetector(
              child: Material(
                borderRadius: BorderRadius.circular(screenHeight * 0.01),
                color: Colors.white,
                elevation: index == currentday ? 8 : 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
                  child: Container(
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.1,
                    child: Center(
                      child: Column(
                        children: [
                          Text(days[index],
                              style: TextStyle(
                                  color: blue, fontSize: screenHeight * 0.03)),
                          SizedBox(height: screenHeight * 0.015),
                          Text((index + 1).toString(),
                              style: TextStyle(
                                  color: blue, fontSize: screenHeight * 0.025))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  currentday = index;
                });
              }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: blue,
        title: Center(
          child: Text('IVENTORS'),
        ),
        actions: [Icon(Icons.notifications)],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: screenHeight * 0.025),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.008,
                  horizontal: screenWidth * 0.008),
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        makeDropDown(months, screenWidth, screenHeight),
                        makeDropDown(years, screenWidth, screenHeight)
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.125,
                      child: makeCalendarList(screenWidth, screenHeight),
                    ),
                    SizedBox(height: screenHeight * 0.01)
                  ],
                ),
              ),
            ),
            SizedBox(height:screenHeight*0.01),
            Expanded(
                child: ListView.builder(
              itemCount: attendance.length,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:screenWidth*0.3,
                      padding: EdgeInsets.symmetric(vertical:screenHeight*0.007),
                      child: Center(child: Text(attendance[index]['time'],style:TextStyle(fontSize: screenHeight*0.022))),
                    ),
                    Column(
                      children: [
                        Icon(
                          attendance[index]['present']?Icons.check_circle:Icons.highlight_off,
                          color: attendance[index]['present']?Colors.green:Colors.red,
                        ),
                        Padding(
                          padding: EdgeInsets.all(screenHeight*0.003),
                          child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.003,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:screenWidth*0.04),
                      child: Container(
                        child: Container(
                          height:screenHeight*0.15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text(attendance[index]['subject'],style:TextStyle(fontSize: screenHeight*0.03,color: blue,fontWeight: FontWeight.w500)),
                            Row(
                              children: [
                                Text('Teacher Name : ',style:TextStyle(color: blue)),
                                Text(attendance[index]['teacherName'],style:TextStyle(color: blue)),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Teacher ID : ',style:TextStyle(color: blue)),
                                Text(attendance[index]['teacherId'],style:TextStyle(color: blue)),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Room No. : ',style:TextStyle(color: blue)),
                                Text(attendance[index]['roomNo'],style:TextStyle(color: blue)),
                              ],
                            )
                          ],),
                        ),
                      ),
                    )
                  ],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
