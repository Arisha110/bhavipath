import 'package:bhavipath/courses/programming.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper.dart';
import '../screens/course_screen.dart';
import '../screens/signin.dart';
import '../web/android.dart';
import '../web/backend.dart';
import '../web/blockchain.dart';
import '../web/frontend.dart';
import 'design.dart';

class DevPage extends StatefulWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
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
          "Development",
          style: TextStyle(color: Color(0xffE1E0EB)),
        ),
      ),
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
                              image: AssetImage('android/assets/fe card.png'),
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURlBE,
                      child: Container(
                        height: 160,
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
                            image: AssetImage('android/assets/be card.png'),
                          ),
                        ),
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
                              image: AssetImage('android/assets/ard card.png'),
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: _launchURLBC,
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
                              image: AssetImage('android/assets/bc card2.png'),
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
