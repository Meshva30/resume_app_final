

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/resumedata.dart';



class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class ResumeData
{
  File? profileImage;
  String? name,lastname,email,mobilenumber,address,birth,skills,language,experiens,projecttitle,details,start,end,references,Schoolname,Grade,details1,startdate1,enddate1,refname,job,company,mon,email1;
  List<String>? skillList;
}
ResumeController resumeController=ResumeController();




ResumeData resumeData = ResumeData();


class _contactState extends State<contact> {

  @override
  Widget build(BuildContext context) {

    resumeController.txtname = TextEditingController(text: 'Meshva ');
    resumeController.txtlastname = TextEditingController(text: ' Patel');
    resumeController.txtemail = TextEditingController(text: 'Meshvapatel@gmail.com');
    resumeController.txtmobilenumber = TextEditingController(text: '9313220217');
    resumeController.txtaddress = TextEditingController(text: '25-navratn-bunglows');
    resumeController.txtdataofbirth = TextEditingController(text: '30/4/2004');
    resumeController.txtskills = TextEditingController(text:'Team Work');
    resumeController.txtlanguage = TextEditingController(text: 'hindi');
    resumeController.txtexperiens = TextEditingController(text: '2yar');
    resumeController.txtprojecttitle = TextEditingController(text: 'resume app');
    resumeController.txtdetails = TextEditingController(text: 'flutter devloper');
    resumeController.txtstartdate = TextEditingController(text: '5/10/23');
    resumeController.txtenddate = TextEditingController(text: '2/4/24');
    resumeController.txtSchoolname = TextEditingController(text: 'vnsgu');
    resumeController.txtGrade = TextEditingController(text: '9');
    resumeController.txtdetails1 = TextEditingController(text: 'flutter devloper');
    resumeController.txtstartdate1 = TextEditingController(text: '5/10/23');
    resumeController.txtenddate1 = TextEditingController(text: '5/4/24');
    resumeController.txtrefname = TextEditingController(text: 'meshvapatel');
    resumeController.txtjob = TextEditingController(text: 'CEO');
    resumeController.txtcompany = TextEditingController(text: 'Koli');
    resumeController.txtmon = TextEditingController(text: '9313220217');
    resumeController.txtemail1 = TextEditingController(text: 'meshvapatel@gmail.com');



    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text("Contact Info",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          Icon(
            Icons.document_scanner,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              setState(() {


              });
            },
            child: Icon(
              Icons.picture_as_pdf,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtname,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: ' Name',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label:
                  Text(" Name", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtlastname,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'last Name',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label:
                  Text("last Name", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtemail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(


                  ),
                  hintText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Email", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtmobilenumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Mobile Number',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Mobile Number",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtaddress,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Address(optional)',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Address(optional)",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtdataofbirth,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Date of Birth(optional)',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Date of Birth(optional)",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Delete Section",
                      style: TextStyle(color: Colors.grey, fontSize: 25),
                    )),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                          color: Colors.green, width: 3
                      )),
                  child: Center(child: Text("Save",
                      style: TextStyle(color: Colors.white, fontSize: 18,))),
                )
              ],
            ),
            Text("How can we improve this page?",
                style: TextStyle(color: Colors.grey, fontSize: 18)),

          ],
        ),
      ),
    );
  }

}
