import 'package:flutter/material.dart';
import 'package:resume_app/cv/career_screen.dart';
import 'package:resume_app/cv/cv.dart';
import 'package:resume_app/cv/education_screen.dart';
import 'package:resume_app/cv/interests_screen.dart';
import 'package:resume_app/cv/key_skills_screen.dart';
import 'package:resume_app/cv/language.dart';
import 'package:resume_app/cv/projects_screen.dart';
import 'package:resume_app/cv/references_screen.dart';
import 'package:resume_app/splash_screen.dart';

import 'cv/add_photo_screen.dart';
import 'cv/contact_info_screen.dart';
import 'cv/personal_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,


    initialRoute: '/',
    routes: {
       '/':(context) => splashscreen(),
       '/login':(context) => loginpage(),
      '/home':(context) => Homescreen(),
      '/contact':(context) => contact(),
      '/personal':(context) => personal(),

      '/career':(context) => careen(),
      '/education':(context) => education(),
      '/keyskills':(context) => Keyskills(),
      '/language':(context) => language(),
      '/projects':(context) => projects(),
      '/interests':(context) => interests(),
      '/references':(context) => references(),
      '/addphoto':(context) => addphoto(),
      '/cv':(context) => cv(),
    },
  ));
}












//m