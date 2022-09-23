import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Design"),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Interior',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Design',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                          ],
                        ),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Graphic',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Design',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                          ],
                        ),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Fashion',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Design',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                          ],
                        ),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Industrial',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Design',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                          ],
                        ),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Communication',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Design',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                          ],
                        ),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Jewellery',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                            Text(
                              'Design',
                              style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff0D0C0C)),
                            ),
                          ],
                        ),
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
