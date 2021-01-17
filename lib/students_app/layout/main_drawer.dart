
import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/drawer_part/Doubt_portal/doubt_help.dart';
import 'package:ivara_app/students_app/drawer_part/Entrance_preparation/Entrance_exams.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/Heal_my_mind.dart';
import 'package:ivara_app/students_app/drawer_part/Skill_development/skilldevelopment.dart';
import 'package:ivara_app/students_app/drawer_part/Student_abroad/Study_abroad_help.dart';
import 'package:ivara_app/students_app/drawer_part/Student_personal_details/studentpersonal.dart';



class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Sumit Ojha',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '3rd Year',
                    style: TextStyle(
                      //   fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            // leading: Icon(Icons.mind),
            leading: Icon(Icons.person),
            title: Text(
              'HealMymind',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>HealMyMindPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Study Abroad Support',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>StudyAbroadHelpPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Skill Development',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>skilldevelopmentPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.wallpaper),
            title: Text(
              'Entrance Preparation',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>EntranceExamsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              '24 X 7 Doubt Portal',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DoubtHelpPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Student Personal Details',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>StudentPersonalPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
