import 'package:flutter/material.dart';
import 'package:flutter_application_3/quiz.dart';
import 'package:flutter_application_3/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestion = 0;
  int result = 0;
  final List<Map<String, Object>> _question = [
    {
      "Question": "What's your name?",
      "Answers": [
        {"Answer": "Ali", "score": 20},
        {"Answer": "Mery", "score": 200},
        {"Answer": "Jack", "score": 2},
        {"Answer": "Daniel", "score": 22},
      ]
    },
    {
      "Question": "What's your fav color?",
      "Answers": [
        {"Answer": "Dog", "score": 20},
        {"Answer": "Cat", "score": 200},
        {"Answer": "Fish", "score": 2},
        {"Answer": "Horse", "score": 30},
      ]
    }
  ];
  void answered(int score) {
    setState(() {
      indexQuestion++;
    });
    result = result + score;
  }

  void reset() {
    indexQuestion = 0;
    result = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: Column(
          children: [
            (_question.length > indexQuestion)
                ? Quiz(_question, answered, indexQuestion)
                : Result(result, reset)
          ],
        ),
      ),
    );
  }
}
