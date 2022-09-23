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

class NavPage1 extends StatefulWidget {
  const NavPage1({Key? key}) : super(key: key);

  @override
  State<NavPage1> createState() => _NavPage1State();
}

class _NavPage1State extends State<NavPage1> {
  List pages = [
    DesignPage(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: Color(0xffE1E0EB),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              selectedIndex: currentIndex,
              onTabChange: onTap,
              backgroundColor: Color(0xffE1E0EB),
              color: Color(0xff131040),
              activeColor: Color(0xffE1E0EB),
              tabBackgroundColor: Color(0xff131040),
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                  onPressed: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => CourseScreen()));
                    // },
                  },
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Settings",
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
