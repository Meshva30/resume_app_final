// import 'package:flutter/material.dart';
//
//
// class cv extends StatefulWidget {
//   const cv({super.key});
//
//   @override
//   State<cv> createState() => _cvState();
// }
//
// class _cvState extends State<cv> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           generatePdf();
//         },
//         child: Icon(Icons.download),
//       ),
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               //  mainAxisAlignment: pd.MainAxisAlignment.start,
//               children: [
//                 Stack(children: [
//                   Container(
//                     height: 720,
//                     width: 225,
//                     decoration: const BoxDecoration(
//                       color: Colors.black,
//                     ),
//                   ),
//                   Positioned(
//                     top: 50,
//                     left: 50,
//                     child: Container(
//                       height: 130,
//                       width: 130,
//                       decoration: const BoxDecoration(
//                         color: Colors.black,
//                         shape: BoxShape.circle,
//                       ),
//                       child: image5,
//                     ),
//                   ),
//                   // pd.SizedBox(height: 100),
//
//                   pd.Positioned(
//                     top: 200,
//                     left: 30,
//                     child: pd.Text(
//                       "CONTACT",
//                       style: pd.TextStyle(
//                         color: PdfColors.white,
//                         fontSize: 18,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                   ),
//
//                   pd.Positioned(
//                     top: 225,
//                     left: 30,
//                     child: pd.Container(
//                       width: 150,
//                       height: 4,
//                       child: pd.Divider(
//                         thickness: 4,
//                         color: PdfColors.white,
//                       ),
//                     ),
//                   ),
//
//                   pd.Positioned(
//                     top: 240,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.Container(
//                           height: 30,
//                           width: 30,
//                           decoration: pd.BoxDecoration(
//                             shape: pd.BoxShape.circle,
//                           ),
//                           child: image1,
//                         ),
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "+123-456-7890",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 280,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.Container(
//                           height: 30,
//                           width: 30,
//                           decoration: pd.BoxDecoration(
//                             shape: pd.BoxShape.circle,
//                           ),
//                           child: image2,
//                         ),
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "hello@123.com",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 320,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.Container(
//                           height: 30,
//                           width: 30,
//                           decoration: pd.BoxDecoration(
//                             shape: pd.BoxShape.circle,
//                           ),
//                           child: image3,
//                         ),
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "www.com",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 360,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.Container(
//                           height: 30,
//                           width: 30,
//                           decoration: pd.BoxDecoration(
//                             shape: pd.BoxShape.circle,
//                           ),
//                           child: image4,
//                         ),
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "123AnyWhare City",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 400,
//                     left: 30,
//                     child: pd.Text(
//                       "SKILLS",
//                       style: pd.TextStyle(
//                         color: PdfColors.white,
//                         fontSize: 20,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                   ),
//
//                   pd.Positioned(
//                     top: 430,
//                     left: 30,
//                     child: pd.Container(
//                       width: 150,
//                       height: 4,
//                       child: pd.Divider(
//                         thickness: 4,
//                         color: PdfColors.white,
//                       ),
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 450,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- Team Work",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 470,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- Time Management",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 490,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- Leadership",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 510,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- Verble &Written ",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 530,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "  Communication",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 560,
//                     left: 30,
//                     child: pd.Text(
//                       "language",
//                       style: pd.TextStyle(
//                         color: PdfColors.white,
//                         fontSize: 20,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                   ),
//
//                   pd.Positioned(
//                     top: 585,
//                     left: 30,
//                     child: pd.Container(
//                       width: 150,
//                       height: 4,
//                       child: pd.Divider(
//                         thickness: 4,
//                         color: PdfColors.white,
//                       ),
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 600,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- English",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 630,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- French",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 660,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- China",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 690,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "- Spanish ",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   pd.Positioned(
//                     top: 720,
//                     left: 30,
//                     child: pd.Row(
//                       children: [
//                         pd.SizedBox(width: 10),
//                         pd.Text(
//                           "  Hindi",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ]),
//                 pd.Column(
//                   // mainAxisAlignment: pd.MainAxisAlignment.start,
//                   crossAxisAlignment: pd.CrossAxisAlignment.start,
//                   children: [
//                     pd.Text(
//                       "   CLAUDIA ALVES",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 35,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.SizedBox(height: 10),
//                     pd.Text(
//                       "      CHIEF EXLUSIVE OFFICE",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 20,
//                         // fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.SizedBox(height: 70),
//                     pd.Text(
//                       "     PROFESSIONAL PROFILE",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 22,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.Container(
//                       margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                       width: 290,
//                       height: 4,
//                       child: pd.Divider(
//                         thickness: 4,
//                         color: PdfColors.black,
//                       ),
//                     ),
//                     pd.SizedBox(height: 15),
//                     pd.Text(
//                       "       I am a growth hacker with 4+ years of \n       experience in sales and marketing in the \n       US market.\n"
//                       ,
//                       style: pd.TextStyle(
//                         color: PdfColors.grey,
//                         fontSize: 15,
//                         //  fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.SizedBox(height: 20),
//                     pd.Text(
//                       "     WORK EXPERIENCE",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 22,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.Container(
//                       margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                       width: 290,
//                       height: 4,
//                       child: pd.Divider(
//                         thickness: 4,
//                         color: PdfColors.black,
//                       ),
//                     ),
//                     pd.SizedBox(height: 15),
//                     pd.Text(
//                       "       CEO & President",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 18,
//                       ),
//                     ),
//                     pd.SizedBox(height: 5),
//                     pd.Text(
//                       "       April 2030 - June 2033",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 18,
//                       ),
//                     ),
//                     pd.SizedBox(height: 10),
//                     pd.Text(
//                       "       Effectively managed team of over 270 \n       employees in 12 locations in 3 countries.\n       Oversaw executive leadership, company \n       training, and public relations with media.",
//                       style: pd.TextStyle(
//                         color: PdfColors.grey,
//                         fontSize: 15,
//                         //  fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.SizedBox(height: 20),
//                     pd.Text(
//                       "     EDUCATION",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 22,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.Container(
//                       margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                       width: 290,
//                       height: 4,
//                       child: pd.Divider(
//                         thickness: 4,
//                         color: PdfColors.black,
//                       ),
//                     ),
//                     pd.SizedBox(height: 20),
//                     pd.Text(
//                       "      Bachelor of computer appilcation",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 18,
//
//                       ),
//                     ),
//                     pd.Text(
//                       "       BCA / Bachelor of computer appilcation\n       (computer appilcation)",
//                       style: pd.TextStyle(
//                         color: PdfColors.grey,
//                         fontSize: 15,
//
//                       ),
//                     ),
//                     pd.SizedBox(height: 20),
//                     pd.Text(
//                       "     REFERENCE",
//                       style: pd.TextStyle(
//                         color: PdfColors.black,
//                         fontSize: 22,
//                         fontWeight: pd.FontWeight.bold,
//                       ),
//                     ),
//                     pd.Container(
//                       margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                       width: 290,
//                       height: 4,
//                       child: pd.Divider(
//                         thickness: 4,
//                         color: PdfColors.black,
//                       ),
//                     ),
//                     pd.SizedBox(height: 20),
//                     pd.Text("       NAME:- Patel Meshva",style: pd.TextStyle(
//                       color: PdfColors.grey,
//                       fontSize: 15,
//
//                     ),),
//                     pd.Text("       RNW",style: pd.TextStyle(
//                       color: PdfColors.grey,
//                       fontSize: 15,
//
//                     ),),
//                     pd.Text("       Phone:- 9313220217",style: pd.TextStyle(
//                       color: PdfColors.grey,
//                       fontSize: 15,
//
//                     ),),
//                     pd.Text("       NAME:- hello@123.com",style: pd.TextStyle(
//                       color: PdfColors.grey,
//                       fontSize: 15,
//
//                     ),),
//                   ],
//                 ),
//               ],
//             )
//           ]);,
//     );
//   }
//
//   generatePdf() async {
//     final pdf = pd.Document();
//     final img = await rootBundle.load('assets/call.jpg');
//     final imageBytes = img.buffer.asUint8List();
//     pd.Image image1 = pd.Image(pd.MemoryImage(imageBytes));
//
//     final img2 = await rootBundle.load('assets/mail.jpg');
//     final Bytes = img2.buffer.asUint8List();
//     pd.Image image2 = pd.Image(pd.MemoryImage(Bytes));
//
//     final img3 = await rootBundle.load('assets/website.jpg');
//     final Bytes1 = img3.buffer.asUint8List();
//     pd.Image image3 = pd.Image(pd.MemoryImage(Bytes1));
//
//     final img4 = await rootBundle.load('assets/home.webp');
//     final Bytes2 = img4.buffer.asUint8List();
//     pd.Image image4 = pd.Image(pd.MemoryImage(Bytes2));
//
//     final profile = await rootBundle.load('assets/profile1.jpg');
//     final Bytes3 = profile.buffer.asUint8List();
//     pd.Image image5 = pd.Image(pd.MemoryImage(Bytes3));
//
//     pdf.addPage(
//       pd.Page(
//         pageFormat: PdfPageFormat.a4,
//         build: (context) {
//           return pd.Column(
//               mainAxisAlignment: pd.MainAxisAlignment.spaceEvenly,
//               children: [
//                 pd.Row(
//                   crossAxisAlignment: pd.CrossAxisAlignment.start,
//                   //  mainAxisAlignment: pd.MainAxisAlignment.start,
//                   children: [
//                     pd.Stack(children: [
//                       pd.Container(
//                         height: 720,
//                         width: 225,
//                         decoration: const pd.BoxDecoration(
//                           color: PdfColors.black,
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 50,
//                         left: 50,
//                         child: pd.Container(
//                           height: 130,
//                           width: 130,
//                           decoration: const pd.BoxDecoration(
//                             color: PdfColors.black,
//                             shape: pd.BoxShape.circle,
//                           ),
//                           child: image5,
//                         ),
//                       ),
//                       // pd.SizedBox(height: 100),
//
//                       pd.Positioned(
//                         top: 200,
//                         left: 30,
//                         child: pd.Text(
//                           "CONTACT",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 18,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ),
//
//                       pd.Positioned(
//                         top: 225,
//                         left: 30,
//                         child: pd.Container(
//                           width: 150,
//                           height: 4,
//                           child: pd.Divider(
//                             thickness: 4,
//                             color: PdfColors.white,
//                           ),
//                         ),
//                       ),
//
//                       pd.Positioned(
//                         top: 240,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.Container(
//                               height: 30,
//                               width: 30,
//                               decoration: pd.BoxDecoration(
//                                 shape: pd.BoxShape.circle,
//                               ),
//                               child: image1,
//                             ),
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "+123-456-7890",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 280,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.Container(
//                               height: 30,
//                               width: 30,
//                               decoration: pd.BoxDecoration(
//                                 shape: pd.BoxShape.circle,
//                               ),
//                               child: image2,
//                             ),
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "hello@123.com",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 320,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.Container(
//                               height: 30,
//                               width: 30,
//                               decoration: pd.BoxDecoration(
//                                 shape: pd.BoxShape.circle,
//                               ),
//                               child: image3,
//                             ),
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "www.com",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 360,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.Container(
//                               height: 30,
//                               width: 30,
//                               decoration: pd.BoxDecoration(
//                                 shape: pd.BoxShape.circle,
//                               ),
//                               child: image4,
//                             ),
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "123AnyWhare City",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 400,
//                         left: 30,
//                         child: pd.Text(
//                           "SKILLS",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 20,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ),
//
//                       pd.Positioned(
//                         top: 430,
//                         left: 30,
//                         child: pd.Container(
//                           width: 150,
//                           height: 4,
//                           child: pd.Divider(
//                             thickness: 4,
//                             color: PdfColors.white,
//                           ),
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 450,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- Team Work",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 470,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- Time Management",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 490,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- Leadership",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 510,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- Verble &Written ",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 530,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "  Communication",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 560,
//                         left: 30,
//                         child: pd.Text(
//                           "language",
//                           style: pd.TextStyle(
//                             color: PdfColors.white,
//                             fontSize: 20,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                       ),
//
//                       pd.Positioned(
//                         top: 585,
//                         left: 30,
//                         child: pd.Container(
//                           width: 150,
//                           height: 4,
//                           child: pd.Divider(
//                             thickness: 4,
//                             color: PdfColors.white,
//                           ),
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 600,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- English",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 630,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- French",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 660,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- China",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 690,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "- Spanish ",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       pd.Positioned(
//                         top: 720,
//                         left: 30,
//                         child: pd.Row(
//                           children: [
//                             pd.SizedBox(width: 10),
//                             pd.Text(
//                               "  Hindi",
//                               style: pd.TextStyle(
//                                 color: PdfColors.white,
//                                 fontSize: 18,
//                                 fontWeight: pd.FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ]),
//                     pd.Column(
//                       // mainAxisAlignment: pd.MainAxisAlignment.start,
//                       crossAxisAlignment: pd.CrossAxisAlignment.start,
//                       children: [
//                         pd.Text(
//                           "   CLAUDIA ALVES",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 35,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.SizedBox(height: 10),
//                         pd.Text(
//                           "      CHIEF EXLUSIVE OFFICE",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 20,
//                             // fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.SizedBox(height: 70),
//                         pd.Text(
//                           "     PROFESSIONAL PROFILE",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 22,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.Container(
//                           margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                           width: 290,
//                           height: 4,
//                           child: pd.Divider(
//                             thickness: 4,
//                             color: PdfColors.black,
//                           ),
//                         ),
//                         pd.SizedBox(height: 15),
//                         pd.Text(
//                           "       I am a growth hacker with 4+ years of \n       experience in sales and marketing in the \n       US market.\n"
//                           ,
//                           style: pd.TextStyle(
//                             color: PdfColors.grey,
//                             fontSize: 15,
//                             //  fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.SizedBox(height: 20),
//                         pd.Text(
//                           "     WORK EXPERIENCE",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 22,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.Container(
//                           margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                           width: 290,
//                           height: 4,
//                           child: pd.Divider(
//                             thickness: 4,
//                             color: PdfColors.black,
//                           ),
//                         ),
//                         pd.SizedBox(height: 15),
//                         pd.Text(
//                           "       CEO & President",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 18,
//                           ),
//                         ),
//                         pd.SizedBox(height: 5),
//                         pd.Text(
//                           "       April 2030 - June 2033",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 18,
//                           ),
//                         ),
//                         pd.SizedBox(height: 10),
//                         pd.Text(
//                           "       Effectively managed team of over 270 \n       employees in 12 locations in 3 countries.\n       Oversaw executive leadership, company \n       training, and public relations with media.",
//                           style: pd.TextStyle(
//                             color: PdfColors.grey,
//                             fontSize: 15,
//                             //  fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.SizedBox(height: 20),
//                         pd.Text(
//                           "     EDUCATION",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 22,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.Container(
//                           margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                           width: 290,
//                           height: 4,
//                           child: pd.Divider(
//                             thickness: 4,
//                             color: PdfColors.black,
//                           ),
//                         ),
//                         pd.SizedBox(height: 20),
//                         pd.Text(
//                           "      Bachelor of computer appilcation",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 18,
//
//                           ),
//                         ),
//                         pd.Text(
//                           "       BCA / Bachelor of computer appilcation\n       (computer appilcation)",
//                           style: pd.TextStyle(
//                             color: PdfColors.grey,
//                             fontSize: 15,
//
//                           ),
//                         ),
//                         pd.SizedBox(height: 20),
//                         pd.Text(
//                           "     REFERENCE",
//                           style: pd.TextStyle(
//                             color: PdfColors.black,
//                             fontSize: 22,
//                             fontWeight: pd.FontWeight.bold,
//                           ),
//                         ),
//                         pd.Container(
//                           margin: pd.EdgeInsets.symmetric(horizontal: 30),
//                           width: 290,
//                           height: 4,
//                           child: pd.Divider(
//                             thickness: 4,
//                             color: PdfColors.black,
//                           ),
//                         ),
//                         pd.SizedBox(height: 20),
//                         pd.Text("       NAME:- Patel Meshva",style: pd.TextStyle(
//                           color: PdfColors.grey,
//                           fontSize: 15,
//
//                         ),),
//                         pd.Text("       RNW",style: pd.TextStyle(
//                           color: PdfColors.grey,
//                           fontSize: 15,
//
//                         ),),
//                         pd.Text("       Phone:- 9313220217",style: pd.TextStyle(
//                           color: PdfColors.grey,
//                           fontSize: 15,
//
//                         ),),
//                         pd.Text("       NAME:- hello@123.com",style: pd.TextStyle(
//                           color: PdfColors.grey,
//                           fontSize: 15,
//
//                         ),),
//                       ],
//                     ),
//                   ],
//                 )
//               ]);
//         },
//       ),
//     );
//     await Printing.layoutPdf(onLayout: (format) async => await pdf.save());
//     PdfPreview(
//       build: (format) => pdf.save(),
//     );
//   }
// }
