import 'package:bhavipath/screens/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../blank.dart';
import '../courses/extra.dart';
import '../courses/extra2.dart';
import '../eng/engpage.dart';
import '../helper.dart';
import '../pagestate.dart';
import '../widgets/category_card.dart';
import '../widgets/circle_button.dart';
import '../models/category.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  /* int _selectedIndex= 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen();
    FeaturedScreen();
    FeaturedScreen();
    FeaturedScreen();
  ]; */
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
          backgroundColor: Color(0xff01091d),
          title: Text(
            'Bhavipath',
            style: TextStyle(color: Color(0xffE1E0EB)),
          ),
        ),
        body: Body());
  }
}

class Body extends StatelessWidget {
  // List nav = [
  //   CourseScreen(),
  //   BlankScreen(),
  //   BlankScreen(),
  //   BlankScreen(),
  //   BlankScreen(),
  //   BlankScreen()
  // ];
  //
  // void func(int index, context) {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => nav[index]));
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff01091d),
        // image: DecorationImage(image: AssetImage("android/assets/a[[.png")),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Explore Categories',
                    style: TextStyle(
                      color: Color(0xffE1E0EB),
                      fontSize: 17,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff01091d),
              // image: DecorationImage(image: AssetImage("android/assets/a[[.png")),
            ),
            width: double.infinity,
            height: 450,
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
                                    builder: (context) => EngPage()));
                          },
                          child: Container(
                            height: 190,
                            width: 160,
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            decoration: BoxDecoration(
                              // color: Color(0xff001091d),
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 4.0,
                                  spreadRadius: .05,
                                )
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'android/assets/eng card2.png')),
                            ),
                            child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration()),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 190,
                            width: 160,
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            decoration: BoxDecoration(
                              // color: Color(0xff001091d),
                              borderRadius: BorderRadius.circular(33),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 4.0,
                                  spreadRadius: .05,
                                )
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'android/assets/med card.png')),
                            ),
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration()),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 190,
                              width: 160,
                              margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                              decoration: BoxDecoration(
                                // color: Color(0xff001091d),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 4.0,
                                    spreadRadius: .05,
                                  )
                                ],
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'android/assets/law card2.png')),
                              ),
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration())),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 190,
                            width: 160,
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            decoration: BoxDecoration(
                              // color: Color(0xff001091d),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 4.0,
                                  spreadRadius: .05,
                                )
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'android/assets/hum card2.png')),
                            ),
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration()),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 190,
                            width: 160,
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            decoration: BoxDecoration(
                              color: Color(0xff001039),
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 4.0,
                                  spreadRadius: .05,
                                ),
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'android/assets/mgmt card2.png')),
                            ),
                            child: Container(
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Extra2()));
                          },
                          child: Container(
                            height: 190,
                            width: 160,
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            decoration: BoxDecoration(
                              // color: Color(0xff001039),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 4.0,
                                  spreadRadius: .05,
                                )
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'android/assets/oth card.png')),
                            ),
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 50,
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: ElevatedButton(
              onPressed: () {
                // onTap();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageState()));
              },
              child: Center(
                child: Text(
                  'Take the Quiz',
                  style: const TextStyle(
                    color: Color(0xff01091d),
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
                    return Color(0xffE1E0EB);
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
            ),
          ),
        ],
      ),
    );
  }
}

// class AppBar extends StatelessWidget {
//   AppBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
//       height: 130,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(20),
//           bottomRight: Radius.circular(20),
//         ),
//         gradient: LinearGradient(
//           colors: [
//             Colors.blue,
//             Colors.lightBlueAccent,
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Hello',
//                 style: Theme.of(context).textTheme.titleLarge,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   FirebaseAuth.instance.signOut().then((value) {
//                     print("Signed Out");
//                     HelperFunctions.saveuserLoggedInSharePreference(false);
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => SignInScreen()));
//                   });
//                 },
//                 child: Icon(Icons.logout_rounded),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
