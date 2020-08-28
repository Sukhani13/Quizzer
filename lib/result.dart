import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String result = "Congratulaions ! You answered all the questions.\n";
    String resultText;
    if (resultScore == 40) {
      resultText = "You are AWESOME !\nYou scored full";
    } else if (resultScore <= 30 && resultScore >= 10) {
      resultText = "You are GOOD !";
    } else {
      resultText = " You need Practice !";
    }
    return result + resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Restart Quiz!",
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.blueAccent,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
