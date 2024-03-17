import 'package:flutter/material.dart';
class careen extends StatefulWidget {
  const careen({super.key});

  @override
  State<careen> createState() => _careenState();
}

TextEditingController txtcompanyName = TextEditingController();
TextEditingController txtjobtitle = TextEditingController();
TextEditingController txtintrodution = TextEditingController();
TextEditingController txtdetails = TextEditingController();
TextEditingController txtstartdate = TextEditingController();
TextEditingController txtenddate = TextEditingController();

String companyname = "";
String jobtitle = "";
String introdution = "";
String details = "";
String startdate = "";
String enddate = "";
class _careenState extends State<careen> {
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
        title: Text("Career",
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
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: txtcompanyName,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(10),

                ),
                hintText: 'Company Name',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                ),
                label: Text("Company Name",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: txtcompanyName,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(10),

                ),
                hintText: 'job Title',
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
              controller: txtcompanyName,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(10),

                ),
                hintText: 'Introduction(optional)',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                ),
                label: Text("Introduction(optional)",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: txtcompanyName,
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
              controller: txtcompanyName,
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
              controller: txtcompanyName,
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
    );
  }
}