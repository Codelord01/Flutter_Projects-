import 'package:flutter/material.dart';
import 'package:project1/quiz.dart';
import 'package:project1/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int question = 0;
  int total_score = 0;

  void answerQuestion(int score) {
    setState(() {
      total_score += score;
      question++;
    });
  }

  void reset_app() {
    setState(() {
      question = 0;
      total_score = 0;
    });
  }

  Widget build(BuildContext context) {
    List questions = [
      {
        'questionText': 'What is your favorite color?',
        'answerText': [
          {"text": "Red", "score": 1},
          {"text": "Blue", "score": 5},
          {"text": "Green", "score": 7},
          {"text": "Black", "score": 9},
        ]
      },
      {
        'questionText': 'What is your favorite animal',
        'answerText': [
          {"text": "Goat", "score": 2},
          {"text": "Cow", "score": 8},
          {"text": "Sheep", "score": 7},
          {"text": "Cat", "score ": 10}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        body: question < questions.length
            ? Quiz(
                question: question,
                questions: questions,
                answerQuestion: answerQuestion)
            : Result(reset_app, total_score),
      ),
    );
  }
}