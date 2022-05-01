import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'question': 'Select Black?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'Red', 'score': 4},
      ],
    },
    {
      'question': 'What is your fav animal?',
      'answers': [
        {'text': 'Bear', 'score': 10},
        {'text': 'Fox', 'score': 7},
        {'text': 'Lion', 'score': 4},
      ],
    },
    {
      'question': 'What is your game?',
      'answers': [
        {'text': 'BGMI', 'score': 10},
        {'text': 'FreeFire', 'score': 7},
        {'text': 'Asphalt', 'score': 4},
      ],
    }
  ];

  void _answerchosen(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          backgroundColor: Colors.deepPurple,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questionIndex, _questions, _answerchosen)
            : Result(_totalScore, _reset),
      ),
    );
  }
}
