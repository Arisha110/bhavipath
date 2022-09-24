import 'package:bhavipath/courses/programming.dart';
import 'package:bhavipath/screens/course_screen.dart';
import 'package:bhavipath/to-do/task_data.dart';
import 'package:bhavipath/to-do/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import 'courses/design.dart';
import 'courses/dev.dart';
import 'courses/extra.dart';
import 'courses/others.dart';

class NavPage2 extends StatefulWidget {
  const NavPage2({Key? key}) : super(key: key);

  @override
  State<NavPage2> createState() => _NavPage2State();
}

class _NavPage2State extends State<NavPage2> {
  List pages = [
    ProgrammingPage(),
    Extra(),
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    ),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // Color(0xff01091d)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: Color(0xff01091d),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              selectedIndex: currentIndex,
              onTabChange: onTap,
              backgroundColor: Color(0xff01091d),
              color: Color(0xffE1E0EB),
              activeColor: Color(0xff01091d),
              tabBackgroundColor: Color(0xffE1E0EB),
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Programming",
                ),
                GButton(
                  icon: Icons.edit_rounded,
                  text: "Courses",
                  onPressed: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => CourseScreen()));
                    // },
                  },
                ),
                GButton(
                  icon: Icons.event_note_rounded,
                  text: "Notes",
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ChangeNotifierProvider(
                    //               create: (context) => TaskData(),
                    //               child: MaterialApp(
                    //                 debugShowCheckedModeBanner: false,
                    //                 home: TasksScreen(),
                    //               ),
                    //             )));
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
