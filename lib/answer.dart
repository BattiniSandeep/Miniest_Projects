import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _answerchosen;
  final String answerText;

  Answer(this._answerchosen, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.white, primary: Colors.deepPurple),
        child: Text(
          answerText,
        ),
        onPressed: _answerchosen,
      ),
    );
  }
}
