import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
          questionIndex += 1;
        });
    //questionIndex += 1;
    print(questionIndex);
  } //anonymous function be like ()=>print('Answer chosen!');

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizee'),
        ),
        body: Column(
          children: [
            SizedBox(height: 16),
            Text(questions[questionIndex]),
            SizedBox(height: 16),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            SizedBox(height: 16),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            SizedBox(height: 16),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
