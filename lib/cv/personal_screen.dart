import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';

import 'contact_info_screen.dart';

class personal extends StatefulWidget {
  const personal({super.key});

  @override
  State<personal> createState() => _personalState();
}





class _personalState extends State<personal> {
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
        title: Text("Personal Statement",
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
              controller: resumeController.txtexperiens,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(10),

                ),
                hintText: '1-2 sentences highlighting your key experiens ',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                ),
                label: Text("1-2 sentences highlighting your key experiens",
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