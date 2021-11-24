import 'package:flutter/material.dart';
import 'package:flutter_application_3/answer.dart';
import 'package:flutter_application_3/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answered;
  final int index;
  Quiz(this.question, this.answered, this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[index]["Question"] as String),
        ...(question[index]["Answers"] as List).map((answer) =>
            Answer(() => answered(answer["score"] as int), answer["Answer"]))
      ],
    );
  }
}
