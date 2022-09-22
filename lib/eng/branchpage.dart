import 'package:bhavipath/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BranchPage extends StatefulWidget {
  const BranchPage({Key? key}) : super(key: key);

  @override
  State<BranchPage> createState() => _BranchPageState();
}

class _BranchPageState extends State<BranchPage> {
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
              'Branches',
              style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xff0D0C0C)),
            ),
          )),
      body: Column(
        children: [
          branch("Computer Science"),
          branch("Information Technology"),
          branch("Electronics & Communication"),
          branch("Civil"),
          branch("Mechanical"),
          branch("Automobile"),
          branch("Petrochemical"),
        ],
      ),
    );
  }
}
