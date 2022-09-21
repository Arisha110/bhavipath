import 'package:bhavipath/model/option.dart';
import 'package:bhavipath/model/question.dart';

final questions = [
  Question(
      text:
          "Do you possess an interest in logic building and analytical thinking?",
      options: [
        Option(code: 'A.', text: 'Yes'),
        Option(code: 'B.', text: 'No'),
      ],
      selectedOption: Option(code: 'A', text: 'Yes')),
  Question(
    text: "Are you interested in debugging/error solving?",
    options: [
      Option(code: 'A.', text: 'Yes'),
      Option(code: 'B.', text: 'No'),
    ],
    selectedOption: Option(code: 'A', text: 'Yes'),
  ),
  Question(
      text: "Do you like being creative around colour schemes ?",
      options: [
        Option(code: 'A.', text: 'Yes'),
        Option(code: 'B.', text: 'No'),
      ],
      selectedOption: Option(code: 'A', text: 'Yes')),
];
