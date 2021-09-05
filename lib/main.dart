import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favourite color?",
      'answers': [
        {"text": "Black", "score": 10},
        {"text": "Blue", "score": 5},
        {"text": "Red", "score": 3},
        {"text": "White", "score": 1},
      ]
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {"text": "Buffalo", "score": 10},
        {"text": "Tiger", "score": 5},
        {"text": "Lion", "score": 3},
        {"text": "Wolf", "score": 1},
      ]
    },
    {
      'questionText': "What's your favourite Sport?",
      'answers': [
        {"text": "Football", "score": 10},
        {"text": "Cricket", "score": 5},
        {"text": "Chess", "score": 3},
        {"text": "Shooting", "score": 1},
      ]
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
    // var aBool = true;
    // aBool = false;
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizee'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
