import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/schedule_a_call.dart';
import 'package:ivara_app/students_app/notification.dart';
import 'chat_to_counsellor.dart';
import 'heal_my_mind_videos.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:ivara_app/students_app/layout/sidebar.dart';

class HealMyMindPage extends StatefulWidget{
  static String id = 'HealMyMindPage';
  @override
  _HealMyMindPageState  createState() => _HealMyMindPageState();
}

class _HealMyMindPageState extends State<HealMyMindPage> {

  @override
  Widget build(BuildContext context) {
    int index = 0;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
        title: Text('HEAL MY MIND',
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

        body: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.08,
                  left: screenWidth * 0.06,
                  right: screenWidth * 0.06,
                ),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(context, ChatToCounsellorPage.id)
                  },
                  child: Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff0772a0),
                        borderRadius: BorderRadius.circular(10),
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
                            padding: EdgeInsets.only(top:screenHeight*0.068),
                            child: Text(
                              'CHAT TO COUNSELLOR',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.08,
                  left: screenWidth * 0.06,
                  right: screenWidth * 0.06,
                ),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(context, ScheduleCallPage.id)
                  },
                  child: Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff0772a0),
                        borderRadius: BorderRadius.circular(10),
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
                            padding: EdgeInsets.only(top:screenHeight*0.068),
                            child: Text(
                              'SCHEDULE A CALL',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.08,
                  left: screenWidth * 0.06,
                  right: screenWidth * 0.06,
                ),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(context, HealMyMindVideosPage.id)
                  },
                  child: Container(
                      width: screenWidth,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff0772a0),
                        borderRadius: BorderRadius.circular(10),
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
                            padding: EdgeInsets.only(top:screenHeight*0.068),
                            child: Text(
                              'HEAL MY MIND VIDEOS',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ],


          ),
        )
    );



  }
}




