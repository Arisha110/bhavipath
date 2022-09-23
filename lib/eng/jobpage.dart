import 'package:bhavipath/courses/design.dart';
import 'package:bhavipath/courses/programming.dart';
import 'package:bhavipath/web/backend.dart';
import 'package:bhavipath/web/frontend.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../courses/others.dart';
import '../web/android.dart';
import '../web/blockchain.dart';
import 'branchpage.dart';

class JobPage extends StatefulWidget {
  const JobPage({Key? key}) : super(key: key);

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  _launchURLSDE() async {
    var url = Uri.parse(
        "https://www.vssut.ac.in/lecture_notes/lecture1428551142.pdf");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURCS() async {
    var url = Uri.parse(
        "https://jatinverma.org/wp-content/uploads/2019/06/How-to-Prepare-for-UPSC-PRelims-2020.pdf");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLCyb() async {
    var url = Uri.parse(
        "https://www.cybok.org/media/downloads/CyBOK-version-1.0.pdf");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLEH() async {
    var url = Uri.parse(
        "https://repo.zenk-security.com/Magazine%20E-book/EN-Ethical%20Hacking.pdf");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLM() async {
    var url = Uri.parse(
        "https://www.ibs-b.hu/documents/277/the_role_of_the_manager.pdf");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLSC() async {
    var url = Uri.parse(
        "https://www.diva-portal.org/smash/get/diva2:1481306/FULLTEXT01.pdf");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
              'Job Opportunities',
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
                      onTap: _launchURLSDE,
                      child: Container(
                        height: 190,
                        width: 160,
                        padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
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
                          children: [
                            Text(
                              'Software',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Development',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Engineer',
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
                      onTap: _launchURCS,
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
                          'Civil Services',
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
                      onTap: _launchURLCyb,
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
                          'Cyber Security',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff0D0C0C)),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLEH,
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
                          'Ethical Hacker',
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
                      onTap: _launchURLM,
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
                              'Manager',
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
                      onTap: _launchURLSC,
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
                          'Standup Comedy',
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
