import 'package:flutter/material.dart';

class SubjectMarks extends StatefulWidget {
  static String id = 'subjectMarks';
  @override
  _SubjectMarksState createState() => _SubjectMarksState();
}

class _SubjectMarksState extends State<SubjectMarks> {
  Color blue = Color(0xFF076FA0);
  List<String> subjects = [
    'Maths',
    'Physics',
    'Chemistry',
    'Biology',
    'History',
    'Social',
  ];
  List<String> examTypes = [
    'Sessionals',
    'Half Yearly',
    'Final',
  ];
  List<Map<String,String>> marks = [
    {'name': 'Tarun', 'marks': '10'},
    {'name': 'Khushwant', 'marks': '20'},
    {'name': 'Divyansh', 'marks': '20'},
    {'name': 'Tarun', 'marks': '30'},
    {'name': 'Tarun', 'marks': '40'},
    {'name': 'Tarun', 'marks': '10'},
    {'name': 'Khushwant', 'marks': '20'},
    {'name': 'Divyansh', 'marks': '20'},
    {'name': 'Tarun', 'marks': '30'},
    {'name': 'Tarun', 'marks': '40'},
    
  ];

  Widget makeDropDown(List<String> dropdownList, screenWidth, screenHeight) {
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Container(
        height: screenHeight * 0.046,
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
                style: TextStyle(color: Colors.black),
              ),
            ),
            icon: Icon(Icons.keyboard_arrow_down),
            items: dropdownList.map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(
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

  Widget makeSubjectMarksList(screenHeight, screenWidth) {
    return ListView.builder(
      itemCount: marks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical:screenHeight*0.01),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.012,horizontal: screenWidth*0.05),
                    child: Text(marks[index]['name'],
                        style: TextStyle(fontSize: screenHeight * 0.028, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.1,
              ),
              Card(
                child: Container(
                  width: screenWidth * 0.1,
                  height: screenHeight * 0.058,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                        hintText: marks[index]['marks']),
                  ),
                ),
              )
            ],
          ),
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
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal:screenWidth*0.05),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:screenHeight * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          makeDropDown(subjects, screenWidth, screenHeight),
                          makeDropDown(examTypes, screenWidth, screenHeight)
                        ],
                      ),
                    ),
                    Expanded(child: makeSubjectMarksList(screenHeight, screenWidth))
                  ],
                ),
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
