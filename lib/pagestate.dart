import 'package:bhavipath/data/question.dart';
import 'package:bhavipath/model/question.dart';
import 'package:bhavipath/ques_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'back.dart';
import 'constants/list.dart';
import 'data/question.dart';
import 'model/option.dart';

class PageState extends StatefulWidget {
  const PageState({Key? key}) : super(key: key);

  get ques => questions;

  @override
  State<PageState> createState() => _PageStateState();
}

class _PageStateState extends State<PageState> {
  late PageController controller;
  late Question question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.ques.first;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: QuestionsWidget(
        onClickedOption: selectOption,
        onChangedPage: (index) {
          nextQuestion(index: index);
          ansWer(index: index);
          print(index);
        },
        controller: controller,
      ));
  late String as;

  void selectOption(Option option) {
    if (question.isLocked) {
      return;
    } else {
      setState(() {
        question.isLocked = true;
        question.selectedOption = option;
        as = question.selectedOption.text;
      });
    }
  }

  void ansWer({required int index}) {
    if (index <= 3) {
      ans[index - 1] = as;
      print(index);
      print(as);
    }
  }

  void nextQuestion({required int? index}) {
    if (index! <= 2) {
      final indexPage = index;
      setState(() {
        question = widget.ques[indexPage];
      });
    }
  }
}
