import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question": "Which is the most valuable car company in the world ? ",
      "answers": [
        {"text": "Tesla", "score": 10},
        {"text": "Ford Motor Co.", "score": 0},
        {"text": "General Motors Co.", "score": 0},
        {"text": "Toyota", "score": 0}
      ],
    },
    {
      "question": "A folder in windows can't be maded with the name ?",
      "answers": [
        {"text": "can", "score": 0},
        {"text": "con", "score": 10},
        {"text": "mak", "score": 0},
        {"text": "make", "score": 0}
      ],
    },
    {
      "question": "What does LG stand for in LG Electronics?",
      "answers": [
        {"text": "Life's Good", "score": 0},
        {"text": "Lucky Goldstar", "score": 10},
        {"text": "Lucky to Go", "score": 0},
        {"text": "Lucy Grand", "score": 0}
      ],
    },
    {
      "question":
          "Which dish was the most ordered item by Indians in 2019 from Swiggy?",
      "answers": [
        {"text": "Butter Chicken", "score": 0},
        {"text": "Chicken Biryani", "score": 10},
        {"text": "Masala Dosa", "score": 0},
        {"text": "Paneer Butter Masala", "score": 0}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizzer"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
