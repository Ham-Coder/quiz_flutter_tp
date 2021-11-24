import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      width: double.infinity,
      child: Text(
        question,
        style: const TextStyle(fontSize: 32),
      ),
    );
  }
}
