import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/answer.dart';
import 'package:project1/question.dart';

class Quiz extends StatelessWidget {
  final void Function(int score) answerQuestion;
  final List questions;
  final int question;

  const Quiz({
    required this.answerQuestion,
    required this.questions,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[question]['questionText']),
        ...(questions[question]['answerText']).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
