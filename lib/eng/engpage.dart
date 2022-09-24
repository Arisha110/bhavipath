import 'package:bhavipath/eng/hspage.dart';
import 'package:bhavipath/eng/skillpage.dart';
import 'package:flutter/material.dart';

import '../courses/others.dart';
import 'branchpage.dart';
import 'jobpage.dart';

class EngPage extends StatefulWidget {
  const EngPage({Key? key}) : super(key: key);

  @override
  State<EngPage> createState() => _EngPageState();
}

class _EngPageState extends State<EngPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff01091d),
      appBar: AppBar(
        title: Text('Engineering', style: TextStyle(color: Color(0xffE1E0EB))),
        backgroundColor: Color(0xff01091d),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Scrollbar(
              child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BranchPage()));
                    },
                    child: Container(
                      height: 160,
                      width: 160,
                      margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4.0,
                            spreadRadius: .05,
                          )
                        ],
                        image: DecorationImage(
                            // fit: BoxFit.fill,
                            image: AssetImage('android/assets/branches.png')),
                      ),
                      child: Container(
                          height: 50, width: 50, decoration: BoxDecoration()),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SkillPage()));
                    },
                    child: Container(
                      height: 160,
                      width: 160,
                      margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4.0,
                            spreadRadius: .05,
                          )
                        ],
                        image: DecorationImage(
                            // fit: BoxFit.fill,
                            image: AssetImage('android/assets/skills.png')),
                      ),
                      child: Container(
                          height: 50, width: 50, decoration: BoxDecoration()),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ExamPage()));
                    },
                    child: Container(
                      height: 160,
                      width: 160,
                      margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4.0,
                            spreadRadius: .05,
                          )
                        ],
                        image: DecorationImage(
                            // fit: BoxFit.fill,
                            image: AssetImage('android/assets/Exams.png')),
                      ),
                      child: Container(
                          height: 50, width: 50, decoration: BoxDecoration()),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JobPage()));
                    },
                    child: Container(
                      height: 160,
                      width: 160,
                      margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4.0,
                            spreadRadius: .05,
                          )
                        ],
                        image: DecorationImage(
                            // fit: BoxFit.fill,
                            image: AssetImage(
                                'android/assets/job opportunities.png')),
                      ),
                      child: Container(
                          height: 50, width: 50, decoration: BoxDecoration()),
                    ),
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}
