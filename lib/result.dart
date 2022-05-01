import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback reset;

  Result(this.totalScore, this.reset);

  String get resultPhrase {
    String resultSent;

    if (totalScore < 20) {
      resultSent = "You are awesome";
    } else if (totalScore < 35) {
      resultSent = "Pretty likeable";
    } else {
      resultSent = "You are Strange!";
    }

    return resultSent;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            child: const Text('Restar Quiz'),
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
