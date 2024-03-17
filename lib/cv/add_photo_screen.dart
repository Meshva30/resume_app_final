import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';

import 'contact_info_screen.dart';
class addphoto extends StatefulWidget {
  const addphoto({super.key});

  @override
  State<addphoto> createState() => _addphotoState();
}

bool checkpass = false;

File? selectedImage;

class _addphotoState extends State<addphoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        title: Text("Add Photo",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          InkWell(
            onTap: () {

              setState(() {

                resumeData.name = resumeController.txtname!.text;
                resumeData.lastname = resumeController.txtlastname!.text;
                resumeData.email = resumeController.txtemail!.text;
                resumeData.mobilenumber = resumeController.txtmobilenumber!.text;
                resumeData.address = resumeController.txtaddress!.text;
                resumeData.birth = resumeController.txtdataofbirth!.text;

                resumeData.skills=resumeController.txtskills!.text;
                resumeData.language=resumeController.txtlanguage!.text;

                resumeData.experiens=resumeController.txtexperiens!.text;

                resumeData.projecttitle=resumeController.txtprojecttitle!.text;
                resumeData.details=resumeController.txtdetails!.text;
                resumeData.start=resumeController.txtstartdate!.text;
                resumeData.end=resumeController.txtenddate!.text;

                resumeData.Schoolname=resumeController.txtSchoolname!.text;
                resumeData.Grade=resumeController.txtGrade!.text;
                resumeData.details1=resumeController.txtdetails1!.text;
                resumeData.startdate1=resumeController.txtstartdate1!.text;
                resumeData.enddate1=resumeController.txtenddate1!.text;


                resumeData.refname=resumeController.txtrefname!.text;
                resumeData.job=resumeController.txtjob!.text;
                resumeData.company=resumeController.txtcompany!.text;
                resumeData.mon=resumeController.txtmon!.text;
                resumeData.email1=resumeController.txtemail1!.text;




              });

              generatePdf();
            },
            child: Icon(
              Icons.document_scanner,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),

          SizedBox(
            width: 10,
          ),

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(color: Colors.grey,
                  image:  imagePath!= null?DecorationImage(image: FileImage(imagePath!),fit: BoxFit.cover):null),
            ),
          ),

          SizedBox(height: 200,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Delete Section",
                    style: TextStyle(color: Colors.grey, fontSize: 25),
                  )),
              InkWell(
                onTap: setImages,
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                          color: Colors.green, width: 3
                      )),
                  child: Center(child: Text("Add Photo",
                      style: TextStyle(color: Colors.white, fontSize: 18,))),
                ),
              )
            ],
          ),
        ],
      ),

    );
  }
  File? imagePath;
  void setImages()async{
    ImagePicker imagePicker=ImagePicker();
    XFile? image=await imagePicker.pickImage(source:ImageSource.gallery);
    setState(() {
      imagePath=File(image!.path);
    });
  }

  Future generatePdf() async {
    if (imagePath != null && resumeData != null) {
    } else {

      print("imagePath or resumeData is null");
    }
    final pdf = pd.Document();

    final img = await rootBundle.load('assets/call.jpg');
    final imageBytes = img.buffer.asUint8List();
    pd.Image image1 = pd.Image(pd.MemoryImage(imageBytes));

    final img2 = await rootBundle.load('assets/mail.jpg');
    final Bytes = img2.buffer.asUint8List();
    pd.Image image2 = pd.Image(pd.MemoryImage(Bytes));

    final img3 = await rootBundle.load('assets/website.jpg');
    final Bytes1 = img3.buffer.asUint8List();
    pd.Image image3 = pd.Image(pd.MemoryImage(Bytes1));

    final img4 = await rootBundle.load('assets/home.webp');
    final Bytes2 = img4.buffer.asUint8List();
    pd.Image image4 = pd.Image(pd.MemoryImage(Bytes2));


    final imageBytes1 = pd.MemoryImage(imagePath!.readAsBytesSync());

    pdf.addPage(
      pd.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pd.Column(
              mainAxisAlignment: pd.MainAxisAlignment.spaceEvenly,
              children: [
                pd.Row(
                  crossAxisAlignment: pd.CrossAxisAlignment.start,
                  //  mainAxisAlignment: pd.MainAxisAlignment.start,
                  children: [
                    pd.Stack(children: [
                      pd.Container(
                        height: 720,
                        width: 225,
                        decoration: const pd.BoxDecoration(
                          color: PdfColors.black,
                        ),
                      ),
                      pd.Positioned(
                        top: 50,
                        left: 50,
                        child: pd.Container(
                          height: 130,
                          width: 130,
                          decoration: const pd.BoxDecoration(
                            color: PdfColors.black,
                            shape: pd.BoxShape.circle,
                          ),
                          child:  pd.ClipRRect(
                            horizontalRadius: 65,
                            verticalRadius: 65,
                            child: pd.Image(imageBytes1,fit: pd.BoxFit.cover),

                          )
                        ),
                      ),
                      // pd.SizedBox(height: 100),

                      pd.Positioned(
                        top: 200,
                        left: 30,
                        child: pd.Text(
                          "CONTACT",
                          style: pd.TextStyle(
                            color: PdfColors.white,
                            fontSize: 18,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                      ),

                      pd.Positioned(
                        top: 225,
                        left: 30,
                        child: pd.Container(
                          width: 150,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                            color: PdfColors.white,
                          ),
                        ),
                      ),

                      pd.Positioned(
                        top: 240,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.Container(
                              height: 30,
                              width: 30,
                              decoration: pd.BoxDecoration(
                                shape: pd.BoxShape.circle,
                              ),
                              child: image1,
                            ),
                            pd.SizedBox(width: 10),
                            pd.Text(
                              resumeData.mobilenumber!,
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 280,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.Container(
                              height: 30,
                              width: 30,
                              decoration: pd.BoxDecoration(
                                shape: pd.BoxShape.circle,
                              ),
                              child: image2,
                            ),
                            pd.SizedBox(width: 10),
                            pd.Text(
                              resumeData.email!,
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 320,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.Container(
                              height: 30,
                              width: 30,
                              decoration: pd.BoxDecoration(
                                shape: pd.BoxShape.circle,
                              ),
                              child: image3,
                            ),
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "www.com",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 360,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.Container(
                              height: 30,
                              width: 30,
                              decoration: pd.BoxDecoration(
                                shape: pd.BoxShape.circle,
                              ),
                              child: image4,
                            ),
                            pd.SizedBox(width: 10),
                            pd.Text(
                            resumeData.address!,
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 400,
                        left: 30,
                        child: pd.Text(
                          "SKILLS",
                          style: pd.TextStyle(
                            color: PdfColors.white,
                            fontSize: 20,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                      ),

                      pd.Positioned(
                        top: 430,
                        left: 30,
                        child: pd.Container(
                          width: 150,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                      pd.Positioned(
                        top: 450,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- Team Work",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 470,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- Time Management",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 490,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- Leadership",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 510,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- Verble &Written ",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 530,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "  Communication",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 560,
                        left: 30,
                        child: pd.Text(
                          "language",
                          style: pd.TextStyle(
                            color: PdfColors.white,
                            fontSize: 20,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                      ),

                      pd.Positioned(
                        top: 585,
                        left: 30,
                        child: pd.Container(
                          width: 150,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                      pd.Positioned(
                        top: 600,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- English",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 630,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- French",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 660,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- China",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 690,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- Spanish ",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 720,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "  Hindi",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    pd.Column(
                      // mainAxisAlignment: pd.MainAxisAlignment.start,
                     // crossAxisAlignment: pd.CrossAxisAlignment.start,
                      children: [
                        pd.Text(
                          resumeData.name!,
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 35,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 10),
                        pd.Text(
                          resumeData.lastname!,
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 20,
                            // fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 70),
                        pd.Text(
                          "     PROFESSIONAL PROFILE",
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                            color: PdfColors.black,
                          ),
                        ),
                        pd.SizedBox(height: 15),
                        pd.Text(
                          "       I am a growth hacker with 4+ years of \n       experience in sales and marketing in \n       the US market.\n"
                          ,
                          style: pd.TextStyle(
                            color: PdfColors.grey,
                            fontSize: 15,
                            //  fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "Project",
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                            color: PdfColors.black,
                          ),
                        ),
                        pd.SizedBox(height: 15),
                        pd.Text(
                          "       resume app",
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 18,
                          ),
                        ),
                        pd.SizedBox(height: 5),
                        pd.Text(
                          "       April 2030 - June 2033",
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 18,
                          ),
                        ),
                        pd.SizedBox(height: 10),
                        pd.Text(
                          "       It's best to include only those most \n       relevant projects or impressive projects \n       in addition to other achievements and \n       impact.",
                          style: pd.TextStyle(
                            color: PdfColors.grey,
                            fontSize: 15,
                            //  fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "EDUCATION",
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                            color: PdfColors.black,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          resumeData.details!,
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 18,

                          ),
                        ),
                        pd.Text(
                          "       BCA / Bachelor of computer \n       appilcation (computer appilcation)",
                          style: pd.TextStyle(
                            color: PdfColors.grey,
                            fontSize: 15,

                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "REFERENCE",
                          style: pd.TextStyle(
                            color: PdfColors.black,
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                            color: PdfColors.black,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(resumeData.refname!,style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,

                        ),),
                        pd.Text(resumeData.company!,style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,

                        ),),
                        pd.Text(resumeData.mon!,style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,

                        ),),
                        pd.Text(resumeData.email1!,style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,

                        ),),
                      ],
                    ),
                  ],
                )
              ]);
        },
      ),
    );
    await Printing.layoutPdf(onLayout: (format) async => await pdf.save());

  }
}