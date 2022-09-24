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

class ExamPage extends StatefulWidget {
  const ExamPage({Key? key}) : super(key: key);

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  _launchURLCMAT() async {
    var url = Uri.parse("https://cmat.nta.nic.in/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLCLAT() async {
    var url = Uri.parse("https://law.careers360.com/exams/clat");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLGRE() async {
    var url = Uri.parse("https://www.ets.org/gre.html");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLUP() async {
    var url = Uri.parse("https://www.upsc.gov.in/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLGATE() async {
    var url = Uri.parse("https://gate.iitkgp.ac.in/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLCAT() async {
    var url = Uri.parse(
        "https://iimcat.ac.in/per/g01/pub/756/ASM/WebPortal/1/index.html?756@@1@@1");
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
            padding: EdgeInsets.all(90),
            child: Text(
              'Exams',
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
                      onTap: _launchURLCMAT,
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
                                image: AssetImage('android/assets/CMAT.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLCLAT,
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
                                image: AssetImage('android/assets/CLAT.png'))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLGRE,
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
                                image: AssetImage('android/assets/GRE.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLUP,
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
                                    AssetImage('android/assets/UPSC CSE.png'))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLGATE,
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
                                image: AssetImage('android/assets/GATE.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLCAT,
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
                                image: AssetImage('android/assets/CAT.png'))),
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
