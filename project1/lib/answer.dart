import 'package:flutter/material.dart';
 
class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String answertext;
  const Answer(this.selectHandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text(answertext),
      ),
    );
  }
}
