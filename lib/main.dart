import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }//anonymous function be like ()=>print('Answer chosen!');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizee'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
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
