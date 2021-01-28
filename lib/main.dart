import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/Heal_my_mind.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/chat_to_counsellor.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/heal_my_mind_videos.dart';
import 'package:ivara_app/Parents_app/Parents_attendance/p_attendance.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/homepage.dart';
import 'package:ivara_app/students_app/auth/login.dart';
import 'package:ivara_app/students_app/auth/signup.dart';
import 'package:ivara_app/students_app/notification.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/academics/test.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/dashboard/subject_chatpage.dart';
import 'package:ivara_app/students_app/student_homepage.dart';
import 'package:ivara_app/students_app/layout/navbar.dart';
import 'package:ivara_app/students_app/drawer_part/Doubt_portal/doubt_help.dart';
import 'package:ivara_app/students_app/drawer_part/Entrance_preparation/Entrance_exams.dart';
import 'package:ivara_app/students_app/drawer_part/Skill_development/skilldevelopment.dart';
import 'package:ivara_app/students_app/drawer_part/Student_abroad/Study_abroad_help.dart';
import 'package:ivara_app/students_app/drawer_part/Student_personal_details/studentpersonal.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/schedule_a_call.dart';
import 'package:ivara_app/students_app/drawer_part/Student_abroad/Courses_available.dart';
import 'package:ivara_app/students_app/drawer_part/Student_abroad/Scholarships.dart';
import 'package:ivara_app/students_app/drawer_part/Student_abroad/news_and_blogs.dart';

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
        LayoutPage.id:(context)=>LayoutPage(),
        DoubtHelpPage.id:(context)=>DoubtHelpPage(),
        EntranceExamsPage.id:(context)=>EntranceExamsPage(),
        HealMyMindPage.id:(context)=>HealMyMindPage(),
        SkilldevelopmentPage.id:(context)=>SkilldevelopmentPage(),
        StudyAbroadHelpPage.id:(context)=>StudyAbroadHelpPage(),
        StudentPersonalPage.id:(context)=>StudentPersonalPage(),
        ScheduleCallPage.id:(context)=>ScheduleCallPage(),
        ChatToCounsellorPage.id:(context)=>ChatToCounsellorPage(),
        HealMyMindVideosPage.id:(context)=>HealMyMindVideosPage(),
        CoursesAvailablePage.id:(context)=>CoursesAvailablePage(),
        NewsandblogsPage.id:(context)=>NewsandblogsPage(),
        ScholarshipsPage.id:(context)=>ScholarshipsPage()

      },

    );
  }
}