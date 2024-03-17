import 'package:flutter/material.dart';
import 'package:resume_app/cv/add_photo_screen.dart';
import 'package:resume_app/cv/career_screen.dart';
import 'package:resume_app/cv/education_screen.dart';
import 'package:resume_app/cv/interests_screen.dart';
import 'package:resume_app/cv/language.dart';
import 'package:resume_app/cv/personal_screen.dart';
import 'package:resume_app/cv/projects_screen.dart';
import 'package:resume_app/cv/references_screen.dart';

import 'cv/contact_info_screen.dart';
import 'cv/key_skills_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [

   contact(),
   personal(),
   careen(),
   education(),
    Keyskills(),
    language(),
   projects(),
   interests(),
   references(),
   addphoto(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/resume.webp",
                        )),
                    SizedBox(
                      width: 170,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("CV Engineer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white)),
                    SizedBox(
                      width: 170,
                    ),
                    Text("PRO", style: TextStyle(color: Colors.white)),

                  ],
                ),

                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/contact');

                  },
                  child: ListTile(
                    leading: Icon(Icons.call_outlined, color: Colors.redAccent),
                    title:
                    Text("Contact info", style: TextStyle(color: Colors.white)),
                  ),

                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/personal');
                  },
                  child: ListTile(
                    leading: Icon(Icons.person_pin_outlined, color: Colors.blue),
                    title: Text("Personal Statement",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/career');
                  },
                  child: ListTile(
                    leading: Icon(Icons.shopping_bag_outlined, color: Colors.yellow),
                    title: Text("Career", style: TextStyle(color: Colors.white)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/education');
                  },
                  child: ListTile(
                    leading: Icon(Icons.cast_for_education_outlined,
                        color: Colors.greenAccent),
                    title: Text("Education", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Divider(thickness: 1,color: Colors.grey,),
                ListTile(
                  leading:Text("Optional Sections",style: TextStyle(color: Colors.grey, fontSize: 18,fontWeight: FontWeight.w500)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/keyskills');
                  },
                  child: ListTile(
                    leading: Icon(Icons.vpn_key_outlined,
                        color: Colors.green),
                    title: Text("Key Skills", style: TextStyle(color: Colors.white)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/language');
                  },
                  child: ListTile(
                    leading: Icon(Icons.language,
                        color: Colors.red),
                    title: Text("language", style: TextStyle(color: Colors.white)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/projects');
                  },
                  child: ListTile(
                    leading: Icon(Icons.work_outline,
                        color: Colors.purpleAccent),
                    title: Text("Projects", style: TextStyle(color: Colors.white)),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.add_box_outlined,
                      color: Colors.greenAccent),
                  title: Text("*Add Custom Section*", style: TextStyle(color: Colors.white)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/interests');
                  },
                  child: ListTile(
                    leading: Icon(Icons.interests,
                        color: Colors.orange),
                    title: Text("Interests", style: TextStyle(color: Colors.white)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/references');
                  },
                  child: ListTile(
                    leading: Icon(Icons.person_outline,
                        color: Colors.pink),
                    title: Text("References", style: TextStyle(color: Colors.white)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/addphoto');
                  },
                  child: ListTile(
                    leading: Icon(Icons.photo_outlined,
                        color: Colors.blue),
                    title: Text("Add Photo", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Divider(thickness: 1,color: Colors.grey,),
                ListTile(
                    leading: Text("View & Download CV",style: TextStyle(color: Colors.grey, fontSize: 18,fontWeight: FontWeight.w500),)

                ),
                ListTile(
                  leading: Icon(Icons.view_agenda_outlined,
                      color: Colors.orange),
                  title: Text("View CV", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.document_scanner_outlined,
                      color: Colors.green),
                  title: Text("CV Scan", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.home_mini_sharp,
                      color: Colors.greenAccent),
                  title: Text("CV Hosting", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.save_outlined,
                      color: Colors.purple),
                  title: Text("Download CV", style: TextStyle(color: Colors.white)),
                ),
                Divider(thickness: 1,color: Colors.grey,),
                ListTile(
                    leading: Text("Job Search",style: TextStyle(color: Colors.grey, fontSize: 18,fontWeight: FontWeight.w500),)

                ),
                ListTile(
                  leading: Icon(Icons.trip_origin_outlined,
                      color: Colors.greenAccent),
                  title: Text("Top job Boards", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.share_outlined,
                      color: Colors.orangeAccent),
                  title: Text("share CV Engineer", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.settings_outlined,
                      color: Colors.pink),
                  title: Text("Setting", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(backgroundColor: Colors.black,),
    body: IndexedStack(
    index: _currentIndex,
    children: _pages,
    ),
    );
  }
}