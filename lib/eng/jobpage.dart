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
      backgroundColor: Color(0xff01091d),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff01091d),
          title: Container(
            padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
            child: Text(
              'Job Opportunities',
              style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xffE1E0EB)),
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
                        height: 160,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4.0,
                                spreadRadius: .05,
                              )
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                    'android/assets/SOFTWARE DEVELOPMENT ENGINEER.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURCS,
                      child: Container(
                        height: 160,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4.0,
                                spreadRadius: .05,
                              )
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                    'android/assets/civil services.png'))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLCyb,
                      child: Container(
                        height: 160,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4.0,
                                spreadRadius: .05,
                              )
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                    'android/assets/cyber security.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLEH,
                      child: Container(
                        height: 160,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4.0,
                                spreadRadius: .05,
                              )
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                    'android/assets/ethical hacker.png'))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLM,
                      child: Container(
                        height: 160,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4.0,
                                spreadRadius: .05,
                              )
                            ],
                            image: DecorationImage(
                                image:
                                    AssetImage('android/assets/manager.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLSC,
                      child: Container(
                        height: 160,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4.0,
                                spreadRadius: .05,
                              )
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                    'android/assets/standup comedian.png'))),
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
