import 'package:bhavipath/screens/course_screen.dart';
import 'package:bhavipath/screens/reset_password.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper.dart';
import '../reusable_widgets.dart';
import 'Signup.dart';
import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  // DatabaseMethod databaseMethod = DatabaseMethod();

  signIn() {
    HelperFunctions.saveuserEmailSharePreference(_emailController.text);

    // databaseMethod.getUserByUseremail(_emailController.text).then((val) {
    //   snapshotUserInfo = val;
    //   setState(() {
    //     HelperFunctions.saveuserNameSharePreference(
    //         snapshotUserInfo?.docs[0].data()["name"]);
    //   });
    // });
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text)
        .then((value) {
      if (value != null) {
        HelperFunctions.saveuserLoggedInSharePreference(true);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CourseScreen()));
      }
    });
  }

  // QuerySnapshot<dynamic>? snapshotUserInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff001039), Color(0xff01091d)],
              begin: FractionalOffset(0.0, 1.0),
              end: FractionalOffset(0.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          // image: DecorationImage(image: AssetImage("android/assets/a[[.png")),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Image(
                      image: AssetImage('android/assets/bp logo.png'),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: 420,
                    width: 324,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 37,
                        ),
                        Text(
                          'Sign In',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff0D0C0C)),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        reusableTextField(
                            " email", Icons.mail, false, _emailController),
                        reusableTextField(" password", Icons.key_sharp, true,
                            _passwordController),
                        SignInSignUpButton(context, true, () {
                          signIn();
                        }),
                        signUpOption(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
            )
          ],
        ),
      ),
    );
  }

  Column signUpOption() {
    return Column(
      children: [
        forgotPassword(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account? ",
              style: TextStyle(color: Color(0xff484752)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: const Text(
                "SignUp",
                style: TextStyle(
                    color: Color(0xff131040), fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget forgotPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResetPassword()));
          },
          child: Text("Forgot Password",
              style: TextStyle(color: Color(0xff484752)))),
    );
  }
}
