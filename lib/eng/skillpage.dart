import 'package:bhavipath/courses/design.dart';
import 'package:bhavipath/courses/programming.dart';
import 'package:bhavipath/web/backend.dart';
import 'package:bhavipath/web/frontend.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../courses/others.dart';
import '../web/android.dart';
import '../web/blockchain.dart';
import 'branchpage.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Container(
            padding: EdgeInsets.all(90),
            child: Text(
              'Skills',
              style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xff0D0C0C)),
            ),
          )),
      body: Container(
          width: double.infinity,
          height: 550,
          child: SingleChildScrollView(
              child: Container(
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Frontend()));
                      },
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
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
                        child: Center(
                            child: Text(
                          'Frontend',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff0D0C0C)),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Backend()));
                      },
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                        child: Center(
                            child: Text(
                          'Backend',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff0D0C0C)),
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Android()));
                      },
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
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
                        child: Center(
                            child: Text(
                          'Android',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff0D0C0C)),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Blockchain()));
                      },
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                        child: Center(
                            child: Text(
                          'Blockchain',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff0D0C0C)),
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProgrammingPage()));
                      },
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
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
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Competitive',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Programming',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                          ],
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DesignPage()));
                      },
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                        child: Center(
                            child: Text(
                          'Designing',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff0D0C0C)),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))),
    );
  }
}
