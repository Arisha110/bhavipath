import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01091d),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Color(0xFF001039),
        child: Icon(
          Icons.add,
          color: Color(0xffE1E0EB),
        ),
      ),
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, left: 27.0, right: 27.0, bottom: 30.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To-do list',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xffE1E0EB),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(
                        color: Color(0xffE1E0EB),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45.0),
                  height: 600.0,
                  decoration: BoxDecoration(
                    color: Color(0xffE1E0EB),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TasksList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
