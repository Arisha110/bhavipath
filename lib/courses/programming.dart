import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../web/backend.dart';
import '../web/frontend.dart';

class ProgrammingPage extends StatefulWidget {
  const ProgrammingPage({Key? key}) : super(key: key);

  @override
  State<ProgrammingPage> createState() => _ProgrammingPageState();
}

class _ProgrammingPageState extends State<ProgrammingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Competitive Programming"),
        ),
        body: Container(
          width: double.infinity,
          height: 550,
          child: SingleChildScrollView(
              child: Container(
                  child: Column(children: [
            SizedBox(height: 10),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Frontend()));
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
                      'DSA',
                      style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xff0D0C0C)),
                    )),
                  ),
                ),
              ],
            ),
          ]))),
        ));
  }
}
