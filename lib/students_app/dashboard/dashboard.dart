import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/dashboard/subject_page.dart';

class DashboardPage extends StatelessWidget {
  static String id = 'DashboardPage';
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RaisedButton(
            onPressed: () { 
              Navigator.pushNamed(context, SubjectPage.id);
            },
            color: Colors.blue,
            child: Text(
              'Subject Chat',
              style: TextStyle(
                  color: Colors.white),
            ),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0))),
      ),
    );
  }
}