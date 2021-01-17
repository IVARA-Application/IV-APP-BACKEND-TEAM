import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/Heal_my_mind.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/chat_to_counsellor.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/heal_my_mind_videos.dart';
import 'Parents_app/Parents_attendance/p_attendance.dart';
import 'Parents_app/Parents_homepage.dart';
import 'homepage.dart';
import 'students_app/auth/login.dart';
import 'students_app/auth/signup.dart';
import 'students_app/notification.dart';
import 'students_app/attendance/attendance.dart';
import 'students_app/academics/academics.dart';
import 'students_app/academics/test.dart';
import 'students_app/dashboard/dashboard.dart';
import 'students_app/dashboard/subject_chatpage.dart';
import 'students_app/student_homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ivara App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id:(context)=>HomePage(),
        LoginPage.id:(context)=>LoginPage(),
        SignUpPage.id:(context)=>SignUpPage(),
        NotificationPage.id:(context)=>NotificationPage(),
        AttendancePage.id:(context)=>AttendancePage(),
        AcademicsPage.id:(context)=>AcademicsPage(),
        TestPage.id:(context)=>TestPage(),
        DashboardPage.id:(context)=>DashboardPage(),
        SubjectChatPage.id:(context)=>SubjectChatPage(),
        StudentHomePage.id:(context)=>StudentHomePage(),
        PAttendancePage.id:(context)=>PAttendancePage(),
        ParentsHomePage.id:(context)=>ParentsHomePage(),
        HealMyMindPage.id:(context)=>HealMyMindPage(),
        HealMyMindVideosPage.id:(context)=>HealMyMindVideosPage(),
        ChatToCounsellorPage.id:(context)=>ChatToCounsellorPage(),

      },

    );
  }
}