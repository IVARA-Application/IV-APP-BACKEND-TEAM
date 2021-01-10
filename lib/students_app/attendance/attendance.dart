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

  @override
  Widget build(BuildContext context) {
    
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    Widget makeDropDown(List<String> dropdownList) {
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
            Card(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      makeDropDown(months),
                      makeDropDown(years)
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.125,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(screenWidth * 0.015),
                          child: GestureDetector(
                            child: Material(
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.01),
                              color: Colors.white,
                              elevation: index == currentday ? 8 : 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: screenHeight * 0.005),
                                child: Container(
                                  width: screenWidth * 0.15,
                                  height: screenHeight * 0.1,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(days[index],
                                            style: TextStyle(
                                                color: blue,
                                                fontSize: screenHeight * 0.03)),
                                        SizedBox(height: screenHeight * 0.015),
                                        Text((index+1).toString(),
                                            style: TextStyle(
                                                color: blue,
                                                fontSize: screenHeight * 0.025))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              setState(() {
                                currentday=index;
                              });
                            }
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height:screenHeight*0.01)
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
