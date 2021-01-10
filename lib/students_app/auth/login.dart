import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/auth/signup.dart';
import 'package:ivara_app/students_app/student_homepage.dart';

class LoginPage extends StatelessWidget {
  static String id = 'LoginPage';
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            RaisedButton(
                onPressed: () { 
                  Navigator.pushNamed(context, StudentHomePage.id);
                },
                color: Colors.blue,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
                RaisedButton(
                onPressed: () { 
                  Navigator.pushNamed(context, SignUpPage.id);
                },
                color: Colors.blue,
                child: Text(
                  'Go to SignUp',
                  style: TextStyle(
                      color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ],
        ),
            
      ),
    );
  }
}