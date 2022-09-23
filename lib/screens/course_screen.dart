import 'package:bhavipath/screens/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../blank.dart';
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          body: Column(
            children: [AppBar(), Body()],
          ),
        ));
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore Categories',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.blue.shade800),
                  ))
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 400,
          child: Scrollbar(
            child: Container(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 24,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      category: categoryList[index],

                    );
                  }),
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
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 130,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed Out");
                    HelperFunctions.saveuserLoggedInSharePreference(false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  });
                },
                child: Icon(Icons.logout_rounded),
              )
            ],
          )
        ],
      ),
    );
  }
}
