import 'package:bhavipath/to-do/task_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper.dart';
import '../screens/course_screen.dart';
import '../screens/signin.dart';
import '../to-do/task_data.dart';
import '../web/android.dart';
import '../web/backend.dart';
import '../web/blockchain.dart';
import '../web/frontend.dart';

class DesignPage extends StatefulWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  _launchURLID() async {
    var url = Uri.parse("https://collegegrad.com/careers/interior-designers");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLJD() async {
    var url =
        Uri.parse("https://www.collegedekho.com/courses/jewellery-designing/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLCD() async {
    var url = Uri.parse(
        "https://blog.shillingtoneducation.com/communication-design/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLGD() async {
    var url = Uri.parse("https://en.m.wikipedia.org/wiki/Graphic_design");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLFD() async {
    var url = Uri.parse("https://www.shiksha.com/design/fashion-designing-chp");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLIDD() async {
    var url = Uri.parse("https://www.idsa.org/what-industrial-design");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xffE1E0EB),
        child: Column(children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff001039), Color(0xff01091d)],
                  begin: FractionalOffset(0.0, 1.0),
                  end: FractionalOffset(0.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              // image: DecorationImage(image: AssetImage("android/assets/a[[.png")),
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("android/assets/bp.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Bhavipath",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              color: Color(0xff131040),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CourseScreen()));
              },
              icon: Icon(Icons.home),
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 16, color: Color(0xff131040)),
            ),
          ),
          // ListTile(
          //   leading: IconButton(
          //       icon: Icon(Icons.event_note_rounded),
          //       color: Color(0xff131040),
          //       onPressed: () => ChangeNotifierProvider(
          //             create: (context) => TaskData(),
          //             child: MaterialApp(
          //               debugShowCheckedModeBanner: false,
          //               home: TasksScreen(),
          //             ),
          //           )),
          //   title: Text(
          //     "Notes",
          //     style: TextStyle(fontSize: 16, color: Color(0xff131040)),
          //   ),
          // ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.subscriptions),
              color: Color(0xff131040),
              onPressed: () {},
            ),
            title: Text(
              "Subscriptions",
              style: TextStyle(fontSize: 16, color: Color(0xff131040)),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.info),
              color: Color(0xff131040),
              onPressed: () {},
            ),
            title: Text(
              "About us",
              style: TextStyle(fontSize: 16, color: Color(0xff131040)),
            ),
          ),
          ListTile(
            leading: IconButton(
                icon: Icon(Icons.logout_rounded),
                color: Color(0xff131040),
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed Out");
                    HelperFunctions.saveuserLoggedInSharePreference(false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  });
                }),
            title: Text(
              "Log Out",
              style: TextStyle(fontSize: 16, color: Color(0xff131040)),
            ),
          ),
        ]),
      ),
      appBar: AppBar(
          backgroundColor: Color(0xff01091d),
          title: Text(
            "Design",
            style: TextStyle(color: Color(0xffE1E0EB)),
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
                      onTap: () => _launchURLID(),
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
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
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('android/assets/id card.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLJD,
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('android/assets/jd card.png'))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLCD,
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
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
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('android/assets/cd card3.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLGD,
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('android/assets/gd card.png'))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _launchURLFD,
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('android/assets/fd card.png'))),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLIDD,
                      child: Container(
                        height: 190,
                        width: 160,
                        margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('android/assets/id card2.png'))),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))),
    );
  }
}
