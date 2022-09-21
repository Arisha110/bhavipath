import 'package:bhavipath/courses/dev.dart';
import 'package:bhavipath/screens/course_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bhavipath/pagestate.dart';
import 'constants/list.dart';
import 'courses/design.dart';

class Navi extends StatefulWidget {
  const Navi({Key? key}) : super(key: key);

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        nav();
      },
      child: Center(
        child: Text(
          'Next',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(Colors.black),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black;
            }
            return Color(0xff131040);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
    );
  }

  void nav() {
    print(ans);
    if (ans[0] == 'Yes' && ans[1] == 'No' && ans[2] == 'Yes') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DesignPage()));
    } else if (ans[0] == 'Yes' && ans[1] == 'Yes' && ans[2] == 'Yes') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DevPage()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CourseScreen()));
    }
  }
}
