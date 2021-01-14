import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/academics/test.dart';

class AcademicsPage extends StatefulWidget {
  static String id = 'AcademicsPage';
  const AcademicsPage({Key key}) : super(key: key);

  @override
  _AcademicsPageState createState() => _AcademicsPageState();
}

class _AcademicsPageState extends State<AcademicsPage> {
  int current = 0;
  Color blue = Color(0xFF076FA0);
  var subject = [
    'Physics',
    'Chemistry',
    'Biology',
    'History',
    'Geography',
    'Hindi',
    'English',
    'Maths'
  ];
  var tests = [
    'Test-1',
    'Test-2',
    'Test-3',
    'Test-4',
    'Test-5',
    'Test-6',
  ];
  var marks = ['20', '19', '20', '19', '20', '19'];
  int totalMarks = 120;
  int totalMarksObtd = 117;

  Widget makeDropDown(List<String> dropdownList, screenWidth, screenHeight) {
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Container(
        height: screenHeight * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius:5.0,
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
                style: TextStyle(color: blue, fontSize: 20),
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

  Widget resultCard(screenWidth, screenHeight) {
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
                elevation: index == current ? 8 : 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
                  child: Container(
                    width: screenWidth * 0.16,
                    height: screenHeight * 0.1,
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenHeight*0.02
                            ),
                            child: Text(tests[index],
                                style: TextStyle(
                                    color: blue, fontSize: screenHeight * 0.024, fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Text(marks[index],
                              style: TextStyle(
                                  color: blue, fontSize: screenHeight * 0.024)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  current = index;
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
      body: SingleChildScrollView(
              child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: screenHeight * 0.025),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.008,
                    horizontal: screenWidth * 0.008),
                child: Card(
                  elevation: 25,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02,
                              horizontal: screenWidth * 0.008),
                        child: Row(
                          children: <Widget>[
                            makeDropDown(subject, screenWidth, screenHeight),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.35),
                              child: Text('$totalMarksObtd/$totalMarks',
                                    style: TextStyle(
                                        color: blue, fontSize: screenHeight * 0.03)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.125,
                        child: resultCard(screenWidth, screenHeight),
                      ),
                      SizedBox(height: screenHeight * 0.01)
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.04,
                  left: screenWidth * 0.06,
                  right: screenWidth * 0.06,
                ),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                      width: screenWidth,
                      height: screenHeight*0.18,
                      decoration: BoxDecoration(
                        color: Color(0xff0772a0),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            spreadRadius: 6.0,
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:  EdgeInsets.only(
                              top: screenHeight * 0.07,
                              left: screenWidth * 0.06,
                              right: screenWidth * 0.06,
                            ),
                            child: Text(
                              'Subject Wise Analysis',
                              style: TextStyle(fontSize: 28, color: Colors.white, fontStyle: FontStyle.italic),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.04,
                  left: screenWidth * 0.06,
                  right: screenWidth * 0.06,
                ),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                      width: screenWidth,
                      height: screenHeight*0.18,
                      decoration: BoxDecoration(
                        color: Color(0xff0772a0),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            spreadRadius: 6.0,
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:  EdgeInsets.only(
                              top: screenHeight * 0.07,
                              left: screenWidth * 0.06,
                              right: screenWidth * 0.06,
                            ),
                            child: Text(
                              'Overall Analysis',
                              style: TextStyle(fontSize: 28, color: Colors.white, fontStyle: FontStyle.italic),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.04,
                  left: screenWidth * 0.06,
                  right: screenWidth * 0.06,
                ),
                child: GestureDetector(
                  onTap: () => {Navigator.pushNamed(context, TestPage.id)},
                  child: Container(
                      width: screenWidth,
                      height: screenHeight*0.18,
                      decoration: BoxDecoration(
                        color: Color(0xff0772a0),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            spreadRadius: 6.0,
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:  EdgeInsets.only(
                              top: screenHeight * 0.07,
                              left: screenWidth * 0.06,
                              right: screenWidth * 0.06,
                            ),
                            child: Text(
                              'Upcoming Tests',
                              style: TextStyle(fontSize: 28, color: Colors.white, fontStyle: FontStyle.italic),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
