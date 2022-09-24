import 'package:bhavipath/courses/programming.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../web/android.dart';
import '../web/backend.dart';
import '../web/blockchain.dart';
import '../web/frontend.dart';
import 'design.dart';

class Extra extends StatefulWidget {
  const Extra({Key? key}) : super(key: key);

  @override
  State<Extra> createState() => _ExtraState();
}

class _ExtraState extends State<Extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff01091d),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff01091d),
          title: Container(
            padding: EdgeInsets.all(70),
            child: Text(
              'Other Courses',
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 160,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                            image: AssetImage('android/assets/as3.png'),
                          )),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                        child: Text(
                          "Actuarial Science is the discipline that applies mathematical and statistical methods to assess risk in insurance, pension, finance, investment and other industries.",
                          style: TextStyle(color: Color(0xffE1E0EB)),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 160,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                            image: AssetImage('android/assets/psy.png'),
                          )),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                        child: Text(
                          "Psychology is the scientific study of mind and behaviour. It is an academic discipline of immense scope, crossing the boundaries between the natural and social sciences.",
                          style: TextStyle(color: Color(0xffE1E0EB)),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 160,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                            image: AssetImage('android/assets/pha.png'),
                          )),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                        child: Text(
                          "It is a study focused on insects and arthropods that impact human health. A person in this field gets a good chance to connect with local and state officials",
                          style: TextStyle(color: Color(0xffE1E0EB)),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 160,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                            image: AssetImage('android/assets/mu.png'),
                          )),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                        child: Text(
                          "Museology or museum studies is the study of museums. It explores the history of museums including curating, preservation, public programming, and education.",
                          style: TextStyle(color: Color(0xffE1E0EB)),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 160,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                            image: AssetImage('android/assets/c.png'),
                          )),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                        child: Text(
                          "Cartography is the study and practice of making and using maps. Combining science, aesthetics and technique, cartography ensures to communicate spatial info effectively.",
                          style: TextStyle(color: Color(0xffE1E0EB)),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 160,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                            image: AssetImage('android/assets/avfx.png'),
                          )),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                        child: Text(
                          "This programme covers various aspects of visual effects, graphic designing, animation, cartoons, games etc. These courses are also required in technical fields to create graphics for the website.",
                          style: TextStyle(color: Color(0xffE1E0EB)),
                        ),
                      )),
                ),
              ],
            ),
          ))),
    );
  }
}
