import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerchosen;

  Quiz(this.questionIndex, this.questions, this.answerchosen);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((i) {
          return Answer(() => answerchosen(i['score']), i['text'] as String);
        }).toList()
      ],
    );
  }
}
