import 'package:bhavipath/screens/course_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../to-do/task_data.dart';
import '../to-do/task_screen.dart';

class DevPage extends StatefulWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Development'),
      ),
    );
  }
}
