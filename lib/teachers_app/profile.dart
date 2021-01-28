import 'package:flutter/material.dart';

class TeacherProfile extends StatefulWidget {
  static String id = 'TeacherProfile';
  @override
  _TeacherProfileState createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  Color blue = Color(0xFF076FA0);

  Widget makeCard(screenHeight, key, value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.008),
      child: Card(
          color: blue,
          child: Padding(
            padding: EdgeInsets.all(screenHeight * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(key, style: TextStyle(color: Colors.white)),
                Text(value,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600))
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blue,
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('IVARA')),
        backgroundColor: blue,
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('TapNotification');
            },
            icon: Stack(
              children: <Widget>[
                Icon(Icons.notifications, color: Colors.white),
                Positioned(
                  left: 14.0,
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.white,
                    size: 9.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight * 0.04,
                      vertical: screenHeight * 0.02),
                  child: Center(
                    child: Text('My Profile',
                        style: TextStyle(
                            fontSize: screenHeight * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(screenHeight * 0.04),
                            topLeft: Radius.circular(screenHeight * 0.04)),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.all(screenHeight * 0.05),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image.asset('./assets/profile.png'),
                            radius: screenHeight * 0.1,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),
                          makeCard(screenHeight, 'Name', 'Mayankesh Mishra'),
                          makeCard(screenHeight, 'Phone No.', '1234567890'),
                          makeCard(screenHeight, 'E-mail', 'iventors@gmail.com')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: screenWidth * 0.08,
              bottom: screenHeight * 0.05,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Material(
                    color: Colors.transparent,
                    shape: CircleBorder(),
                    child: Image.asset(
                      './assets/backbutton.png',
                      height: screenHeight * 0.1,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
