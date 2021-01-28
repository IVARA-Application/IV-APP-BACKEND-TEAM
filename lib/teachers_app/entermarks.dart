import 'package:flutter/material.dart';
import 'package:ivara_app/teachers_app/enterSubjectMarks.dart';

class EnterMarks extends StatefulWidget {
  static String id = 'enterMarks';
  @override
  _EnterMarksState createState() => _EnterMarksState();
}

class _EnterMarksState extends State<EnterMarks> {
  Color blue = Color(0xFF076FA0);
  List<Map> studentMarks = [
    {
      'studentName': 'Tarun',
      'subjects': [
        {'subjectName': 'Maths', 'marks': 18},
        {'subjectName': 'Phy', 'marks': 17},
        {'subjectName': 'Chem', 'marks': 16},
        {'subjectName': 'Bio', 'marks': 13},
        {'subjectName': 'History', 'marks': 16},
        {'subjectName': 'Social', 'marks': 19}
      ]
    },
    {
      'studentName': 'Khushwanth',
      'subjects': [
        {'subjectName': 'Maths', 'marks': 18},
        {'subjectName': 'Phy', 'marks': 17},
        {'subjectName': 'Chem', 'marks': 16},
        {'subjectName': 'Bio', 'marks': 13},
        {'subjectName': 'History', 'marks': 16},
        {'subjectName': 'Social', 'marks': 19}
      ]
    },
    {
      'studentName': 'Divyansh',
      'subjects': [
        {'subjectName': 'Maths', 'marks': 18},
        {'subjectName': 'Phy', 'marks': 17},
        {'subjectName': 'Chem', 'marks': 16},
        {'subjectName': 'Bio', 'marks': 13},
        {'subjectName': 'History', 'marks': 16},
        {'subjectName': 'Social', 'marks': 19}
      ]
    }
  ];

  Widget makeMarksList(screenWidth, screenHeight, subjects) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: subjects.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? screenWidth * 0.04 : screenWidth * 0.015,
                  right: screenWidth * 0.015,
                  top: screenWidth * 0.015,
                  bottom: screenWidth * 0.015),
              child: Material(
                borderRadius: BorderRadius.circular(screenHeight * 0.022),
                color: Colors.white,
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
                  child: Container(
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.11,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.006),
                          Text(subjects[index]['subjectName'],
                              style: TextStyle(
                                  fontSize: screenHeight * 0.022,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: screenHeight * 0.015),
                          Text(subjects[index]['marks'].toString(),
                              style: TextStyle(fontSize: screenHeight * 0.025))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget makeStudentCard(screenHeight, screenWidth) {
    return ListView.builder(
        itemCount: studentMarks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.01,
            ),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(screenHeight * 0.022)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenHeight * 0.02,
                        vertical: screenHeight * 0.0),
                    child: Text(studentMarks[index]['studentName'],
                        style: TextStyle(
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: screenHeight * 0.18,
                    child: makeMarksList(screenWidth, screenHeight,
                        studentMarks[index]['subjects']),
                  ),
                ],
              ),
            ),
          );
        });
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: screenWidth * 0.38,
                        child: RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.015),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, SubjectMarks.id);
                            },
                            child: Row(
                              children: [
                                Text('Enter Marks '),
                                Icon(Icons.expand_more)
                              ],
                            )),
                      ),
                      Expanded(
                        child: makeStudentCard(screenHeight, screenWidth),
                      )
                    ]),
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
        ));
  }
}
