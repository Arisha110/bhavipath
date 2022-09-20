import 'package:bhavipath/screens/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.pink,
          child: IconButton(
            icon: Icon(Icons.logout_rounded),
            color: Color(0xff131040),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                HelperFunctions.saveuserLoggedInSharePreference(false);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              });
            },
          ),
        ),
      ),
    );
  }
}
