import 'package:flutter/material.dart';
import 'package:resume_app/cv/contact_info_screen.dart';
class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}


class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
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
        title: Text("Education",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          Icon(
            Icons.document_scanner,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.picture_as_pdf,
            color: Colors.white,
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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtSchoolname,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),
        
                  ),
                  hintText: 'University/School',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("University/School",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtGrade,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),
        
                  ),
                  hintText: 'Grade',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Grade",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtdetails,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),
        
                  ),
                  hintText: 'Details',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Details",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtstartdate1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),
        
                  ),
                  hintText: 'Start Date',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Start Date",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtenddate1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),
        
                  ),
                  hintText: 'End Date',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("End Date",
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
                          color: Colors.green,width: 3
                      )),
                  child: Center(child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18,))),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("How can we improve this page?",
                style: TextStyle(color: Colors.grey, fontSize: 18)),
        
          ],
        ),
      ),
    );
  }
}