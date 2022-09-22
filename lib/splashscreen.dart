// import 'dart:async';
//
// import 'package:bhavipath/screens/course_screen.dart';
// import 'package:bhavipath/screens/signin.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'helper.dart';
//
// class MySplashScreen extends StatefulWidget {
//   const MySplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MySplashScreen> createState() => _MySplashScreenState();
// }
//
// class _MySplashScreenState extends State<MySplashScreen> {
//   bool userIsLoggedIn = false;
//
//   splashScreenTimer() {
//     Timer(const Duration(seconds: 5), () async {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => userIsLoggedIn != null
//                   ? userIsLoggedIn
//                       ? CourseScreen()
//                       : SignInScreen()
//                   : Container(
//                       color: Colors.black12,
//                     )));
//     });
//   }
//
//   @override
//   void initState() {
//     getLoggedInState();
//     super.initState();
//     splashScreenTimer();
//   }
//
//   getLoggedInState() async {
//     await HelperFunctions.getuserLoggedInSharePreference().then((value) {
//       setState(() {
//         userIsLoggedIn = value!;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         child: Container(
//       child: Center(
//         child: Container(
//           height: 40,
//           width: double.infinity,
//           child: Image(
//             image: AssetImage('android/assets/bhavipath.png'),
//           ),
//         ),
//       ),
//     ));
//   }
// }
