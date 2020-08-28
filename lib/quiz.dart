import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<dynamic, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    final answer = questions[questionIndex]['answers'];
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]["question"],
        ),
        Answer(() => answerQuestion((answer)[0]["score"]), (answer)[0]["text"]),
        Answer(() => answerQuestion((answer)[1]["score"]), (answer)[1]["text"]),
        Answer(() => answerQuestion((answer)[2]["score"]), (answer)[2]["text"]),
        Answer(() => answerQuestion((answer)[3]["score"]), (answer)[3]["text"]),
      ],
    );
  }
}
