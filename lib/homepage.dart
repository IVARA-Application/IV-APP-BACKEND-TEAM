import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/auth/login.dart';
import 'package:ivara_app/teachers_app/dashboard.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
              color: Colors.blue,
              child: Text(
                'HomePage Student',
                style: TextStyle(color: Colors.white),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, TeacherDashboard.id);
              },
              color: Colors.blue,
              child: Text(
                'HomePage Teacher',
                style: TextStyle(color: Colors.white),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
