import 'package:bhavipath/courses/programming.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../web/android.dart';
import '../web/backend.dart';
import '../web/blockchain.dart';
import '../web/frontend.dart';
import 'design.dart';

class Extra2 extends StatefulWidget {
  const Extra2({Key? key}) : super(key: key);

  @override
  State<Extra2> createState() => _Extra2State();
}

class _Extra2State extends State<Extra2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff0001039),
          title: Container(
            padding: EdgeInsets.all(70),
            child: Text(
              'OtherCourses',
              style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xffE1E0EB)),
            ),
          )),
      body: Container(
          color: Color(0xff01091d),
          width: double.infinity,
          height: 550,
          child: SingleChildScrollView(
              child: Container(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 170,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 4.0,
                          spreadRadius: .05,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Actuarial Science',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff0D0C0C)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Actuarial Science is the discipline that applies mathematical and statistical methods to assess risk in insurance etc.',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff0D0C0C)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 4.0,
                          spreadRadius: .05,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Psychology',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff0D0C0C)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Psychology is the scientific study of mind and behaviour.It is an academic discipline of immense scope.',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff0D0C0C)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 4.0,
                          spreadRadius: .05,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cartography',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff0D0C0C)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Cartogaphy is the study and practice of making and using maps.Combining science, aesthetics and technique',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff0D0C0C)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 4.0,
                          spreadRadius: .05,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Museology',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff0D0C0C)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Museology or museum studies is the study of museums.It explores the history of museums.',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff0D0C0C)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 4.0,
                          spreadRadius: .05,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Public Health Entomology',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff0D0C0C)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'It is a study focused',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff0D0C0C)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 4.0,
                          spreadRadius: .05,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Actuarial Science',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff0D0C0C)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Actuarial Science is the discipline that applies mathematical and statistical methods to assess risk in insurance etc.',
                        style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff0D0C0C)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
