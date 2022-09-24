import 'package:bhavipath/courses/design.dart';
import 'package:bhavipath/courses/programming.dart';
import 'package:bhavipath/navpage1.dart';
import 'package:bhavipath/web/backend.dart';
import 'package:bhavipath/web/frontend.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../courses/others.dart';
import '../navpage2.dart';
import '../web/android.dart';
import '../web/blockchain.dart';
import 'branchpage.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  _launchURLFE() async {
    var url = Uri.parse("https://www.roadmap.sh/frontend");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURlBE() async {
    var url = Uri.parse("https://www.roadmap.sh/backend");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLADR() async {
    var url = Uri.parse("https://www.roadmap.sh/android");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLBC() async {
    var url = Uri.parse("https://www.roadmap.sh/blockchain");
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
            padding: EdgeInsets.all(100),
            child: Text(
              'Skills',
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
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLFE,
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
                                    AssetImage('android/assets/fe card.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURlBE,
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
                                    AssetImage('android/assets/be card.png'))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLADR,
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
                                    AssetImage('android/assets/ard card.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavPage2()));
                      },
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
                                    AssetImage('android/assets/cp card.png'))),
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
                                builder: (context) => NavPage1()));
                      },
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
                                    AssetImage('android/assets/des card.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLBC,
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
                                    AssetImage('android/assets/bc card.png'))),
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
