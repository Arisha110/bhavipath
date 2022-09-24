import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/option.dart';
import 'model/question.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  OptionsWidget({required this.question, required this.onClickedOption});

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: question.options
            .map<Widget>((option) => buildOption(context, option))
            .toList(),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: color,
          ),
          child: buildAnswer(option)),
    );
  }

  Widget buildAnswer(Option option) => Container(
        height: 50,
        child: Row(
          children: [
            Text(
              option.code,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              option.text,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      );

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;

    if (!isSelected) {
      return Colors.grey.shade200;
    } else {
      return Colors.blueAccent;
    }
  }
}
