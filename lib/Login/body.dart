
import 'package:flutter/material.dart';
import 'package:ivara_app/Login/background.dart';
import 'package:ivara_app/Signup/signup.dart';
import 'package:ivara_app/useful_components/have_account.dart';
import 'package:ivara_app/useful_components/round_button.dart';
import 'package:ivara_app/useful_components/round_field.dart';
import 'package:ivara_app/useful_components/round_password.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         //   SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/logo_small.png",
              height: size.height * 0.4,
              width: size.width * 1,
            ),
          //  SizedBox(height: size.height * 0.01),
            Text(
              "Please login or sign up to continue using the app",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Enter your user name",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));

              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
