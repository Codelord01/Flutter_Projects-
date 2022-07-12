import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int total_score;
  final void Function() reset;
  const Result(this.reset, this.total_score);

  String get text_phrase {
    String phrase;
    if (total_score <= 8) {
      phrase = "You are great!";
    } else if (total_score <= 12) {
      phrase = "You are awesome!";
    } else {
      phrase = "You are marvelous!";
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          text_phrase,
          style:const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        FlatButton(
          onPressed: reset,
          child:const Text(
            "Reset the app",
            style: TextStyle(color: Colors.blue),
          ),
        )
      ]),
    );
  }
}
