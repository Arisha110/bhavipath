import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bhavipath/pagestate.dart';
import 'package:bhavipath/ques_widget.dart';
import 'package:bhavipath/screens/course_screen.dart';
import 'package:bhavipath/screens/home_screen.dart';
import 'package:bhavipath/screens/quiz.dart';
import 'package:bhavipath/screens/signin.dart';
import 'package:bhavipath/splashscreen.dart';
import 'package:bhavipath/to-do/task_data.dart';
import 'package:bhavipath/to-do/task_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool userIsLoggedIn = false;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getuserLoggedInSharePreference().then((value) {
      setState(() {
        userIsLoggedIn = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
            duration: 3000,
            splashTransition: SplashTransition.scaleTransition,
            splash: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 190,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('android/assets/bp logo.png'),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Container(
                //       child: Text(
                //         'CHAT',
                //         style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Color(0xff131040)),
                //       ),
                //     ),
                //     Container(
                //       child: Text(
                //         'IFY',
                //         style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Color(0xff131040)),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            )),
            splashIconSize: 250,
            backgroundColor: Color(0xff01091d),
            nextScreen: userIsLoggedIn != null
                ? userIsLoggedIn
                    ? CourseScreen()
                    : SignInScreen()
                : Container(
                    color: Colors.black12,
                  )));
  }
}
