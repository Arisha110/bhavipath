import 'package:bhavipath/courses/programming.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ProfileScreen()));
              },
              icon: Icon(Icons.person),
            ),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 16, color: Color(0xff131040)),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.settings),
              color: Color(0xff131040),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => SettingsScreen()));
              },
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 16, color: Color(0xff131040)),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.help),
              color: Color(0xff131040),
              onPressed: () {},
            ),
            title: Text(
              "Help",
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
        backgroundColor: Color(0xff0001039),
        title: Text(
          "Development",
          style: TextStyle(color: Color(0xffE1E0EB)),
        ),
      ),
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
              ],
            ),
          ))),
    );
  }
}
