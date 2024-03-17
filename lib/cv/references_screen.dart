import 'package:flutter/material.dart';
import 'package:resume_app/cv/contact_info_screen.dart';
class references extends StatefulWidget {
  const references({super.key});

  @override
  State<references> createState() => _referencesState();
}



class _referencesState extends State<references> {
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
        title: Text("References",
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
                controller: resumeController.txtrefname,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Referencees Name',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("References Name",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtjob,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Job Title',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Job Title",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtcompany,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Company Name(+Loction)',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Company Name(+Loction))",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtmon,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Mobile Number',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Mobile Number",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: resumeController.txtemail1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  label: Text("Email",
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