import 'package:flutter/material.dart';
import './subjectCard.dart';

class DashboardPage extends StatelessWidget {
  static String id = 'DashboardPage';
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    List<SubjectCard> subjectCardd = [
      SubjectCard(subjectName: 'Biology'),
      SubjectCard(subjectName: 'Physics'),
      SubjectCard(subjectName: 'Chemistry'),
      SubjectCard(subjectName: 'Biology'),
      SubjectCard(subjectName: 'Physics'),
      SubjectCard(subjectName: 'Chemistry'),
    ];

    Widget subjectCardTemplate(subjectCard) {
      return SubjectCardWidget(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        subjectCard: subjectCard,
      );
    }

    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color(0xff0772a0),
          title: Center(
            child: Text('IVENTORS'),
          ),
          actions: [Icon(Icons.notifications)],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: subjectCardd
                  .map((SubjectCard) => subjectCardTemplate(SubjectCard))
                  .toList(),
            ),
          ),
        )
      );
  }
}
