import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
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
              'Skills',
              style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xff0D0C0C)),
            ),
          )),
      body: Column(
        children: [],
      ),
    );
  }
}
