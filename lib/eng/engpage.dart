import 'package:bhavipath/eng/skillpage.dart';
import 'package:flutter/material.dart';

import '../courses/others.dart';
import 'branchpage.dart';

class EngPage extends StatefulWidget {
  const EngPage({Key? key}) : super(key: key);

  @override
  State<EngPage> createState() => _EngPageState();
}

class _EngPageState extends State<EngPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Engineering'),
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
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 4.0,
                              spreadRadius: .05,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 100,
                              width: 150,
                              child: Image(
                                image:
                                    AssetImage("android/assets/Group 14.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text("Branches"),
                          Text(
                            'in Engineering',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SkillPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 4.0,
                              spreadRadius: .05,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 100,
                              width: 150,
                              child: Image(
                                image:
                                    AssetImage("android/assets/Group 14.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text("Skills"),
                          Text(
                            'to develop',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 4.0,
                              spreadRadius: .05,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 100,
                              width: 150,
                              child: Image(
                                image:
                                    AssetImage("android/assets/Group 14.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text("Higher Studies"),
                          Text(
                            'in Engineering',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4.0,
                            spreadRadius: .05,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 100,
                            width: 150,
                            child: Image(
                              image: AssetImage("android/assets/Group 14.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text("Job Opportunities"),
                        Text(
                          'to develop',
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}
