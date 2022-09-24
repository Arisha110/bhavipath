import 'package:bhavipath/data/question.dart';
import 'package:bhavipath/model/question.dart';
import 'package:bhavipath/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/option.dart';
import 'options_widget.dart';

class QuestionsWidget extends StatelessWidget {
  final PageController controller;
  final ValueChanged<Option> onClickedOption;
  final ValueChanged<int> onChangedPage;
  QuestionsWidget(
      {Key? key,
      required this.onClickedOption,
      required this.onChangedPage,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
      onPageChanged: onChangedPage,
      controller: controller,
      itemBuilder: (context, index) {
        int l = questions.length;
        if (index > l - 1) {
          return HomeScreen();
        } else {
          final question = questions[index];

          return buildQuestion(question: question);
        }
      });

  Widget buildQuestion({
    required Question question,
  }) =>
      Scaffold(
        backgroundColor: Color(0xff01091d),
        body: Container(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'QUIZ',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffE1E0EB)),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                question.text,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xffE1E0EB)),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                  child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ))
            ],
          ),
        ),
      );
}
