import 'package:flutter/material.dart';
import 'package:resume_app/cv/key_skills_screen.dart';

import '../utils/resumedata.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}



class languagedata {
  String? language;
  List<String>? languageList;
}
ResumeController resumeController=ResumeController();

List<TextEditingController>? txtlanguageController = [txtSkills!];

class _languageState extends State<language> {
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
        title: Text("language",
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
          Container(
            height: 190,
            width: 400,
            //decoration: BoxDecoration(color: Colors.grey),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: resumeController.txtlanguage,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(


                      ),
                      hintText: 'List your key language here ',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      label: Text("List your key language here",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {

                          });
                        },

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
                    ),
                    IconButton(onPressed: () {
                      setState(() {
                       TextEditingController txtlanguage=TextEditingController();
                        txtlanguageController!.add(txtlanguage);
                      });
                    }, icon: Icon(Icons.add,color: Colors.grey,))
                  ],
                ),


              ],

            ),
          ),
          ...List.generate(txtlanguageController!.length, (index) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: txtlanguageController![index],
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(


                    ),
                    hintText: 'List your key skills here ',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                    ),
                    label: Text("List your key skills here",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          txtlanguageController!.removeAt(index);
                        });
                      },
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
                  ),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.add,color: Colors.grey,))
                ],
              ),


            ],

          ),)
        ],
      ),



    );
  }
}
