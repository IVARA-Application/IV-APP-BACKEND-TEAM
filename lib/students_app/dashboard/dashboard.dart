import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/notification.dart';
import './subjectCard.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:ivara_app/students_app/layout/sidebar.dart';

class DashboardPage extends StatefulWidget {
  static String id = 'DashboardPage';
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int index = 0;
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
      
      appBar: AppBar(
        backgroundColor: Color(0xff0772a0),
        centerTitle: true,
        elevation: 1.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('IVARA',
        style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(LineAwesomeIcons.bell),
            color: Colors.white,
            highlightColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, NotificationPage.id);
            },
          )
        ],
      ),
      drawer: MyDrawer(
        onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        },
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
